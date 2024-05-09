#include <ros/ros.h>
#include <ackermann_msgs/AckermannDriveStamped.h>
#include <ackermann_msgs/AckermannDrive.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>

// for printing
#include <iostream>
#include <cmath>
using namespace std;

// for RAND_MAX
#include <cstdlib>

class disparity_extender {
private:
    // A ROS node
    ros::NodeHandle n;

    // car parameters
    double max_speed, max_steering_angle, width, wheelbase;

    // Listen for odom messages
    ros::Subscriber laser_sub;

    // Publish drive data
    ros::Publisher drive_pub;


    double prev_angle = 0.0;          //previous desired steering angle   
    bool changedir = false;
    bool prev_left = false;

    double fov = 160;                    //total fov POSITVE!!!
    double side_fov = 70;           //fov angle for side control
    int average_ind = 10;    //Write average lookahead index MAY NEED TO CHANGE
    int straight_threshold = 1;

    bool debug = true; //TOGGLES DEBUG DATA
   
    ackermann_msgs::AckermannDriveStamped drive_st_msg;
    ackermann_msgs::AckermannDrive drive_msg;

public:
    disparity_extender() {
        // Initialize the node handle
        n = ros::NodeHandle("~");

        // get topic names
        std::string drive_topic, odom_topic, scan_topic;
        n.getParam("disparity_drive_topic", drive_topic);
        n.getParam("odom_topic", odom_topic);
	    n.getParam("scan_topic", scan_topic);

        // get car parameters
        n.getParam("max_speed", max_speed);
        n.getParam("max_steering_angle", max_steering_angle);
        n.getParam("width", width);
        n.getParam("wheelbase", wheelbase);

        // Make a publisher for drive messages
        drive_pub = n.advertise<ackermann_msgs::AckermannDriveStamped>(drive_topic, 10);

        // Start a subscriber to listen to odom messages
        //odom_sub = n.subscribe(odom_topic, 1, &disparity_extender::odom_callback, this);
        laser_sub = n.subscribe(scan_topic, 1, &disparity_extender::scan_callback, this);
	    void scan_callback(const sensor_msgs::LaserScan & scan_msg);
    }

    void scan_callback(const sensor_msgs::LaserScan & scan_msg){
        //ARRAY INITIALIZATION
        //array writing for usable data
        sensor_msgs::LaserScan laser_msg;
        laser_msg = scan_msg;
        std::vector<float> laser_ranges;
        laser_ranges = laser_msg.ranges;
        size_t range_size_sizet = laser_ranges.size();
        int range_size = static_cast<int>(range_size_sizet);
        std::vector<float> fov_range; 
        std::vector<float> left_range;
        std::vector<float> right_range;
        
	    double angle_increment = laser_msg.angle_increment; //tells the Lidar the angle to scan
	    double fov_rad = (fov) * M_PI / 180.0;
	    int fov_idx = static_cast<int>(fov_rad / angle_increment); //indexing fov ranges from lidar
        double side_rad = (side_fov) * M_PI / 180.0;
	    int side_idx = static_cast<int>(side_rad / angle_increment); //fpr indexing the side view lidar
        //std::vector<float> laser_range_raw = laser_ranges; 
        
        //INFINITE ERROR INTERPOLATION
        //rewrite infinites as the previous non infinite number linearly scaling to the next
        int index = 1;
        while ((laser_ranges[0] == INFINITY || std::isnan(laser_ranges[0])) && index < (range_size)){ //rewrite the beginning if inifinite
                laser_ranges[0] = laser_ranges[index];
                index++;
        }

        index = 1;
        while ((laser_ranges[range_size - 1] == INFINITY || std::isnan(laser_ranges[range_size - 1])) && range_size - 1 - index >= 0){ //rewrite the end if infinite
                laser_ranges[range_size - 1] = laser_ranges[range_size - 1 - index];
                index++;
        }
        std::vector<float> laser_range_raw = laser_ranges; 

        for(int i = 1; i < range_size - 1;i++){ 
            if (laser_ranges[i] == INFINITY || std::isnan(laser_ranges[i]) ){
                int count = 1;

                while (((laser_ranges[i + count] == INFINITY) || std::isnan(laser_ranges[i+count])) && ((i + count) < range_size)){ //while counting until it hits a non infinte number
                    count++;
                }
                for (int j = 0; j < count; j++){        //linearly scales the infinites
                    double diff = std::abs(laser_ranges[i + count] - laser_ranges[i - 1]);
                    if (laser_ranges[i-1] < laser_ranges[i + count]) {
                        laser_ranges[i + j] = laser_ranges[i-1]+((j+1)*(diff)/(count));
                    } else if (laser_ranges[i-1] >= laser_ranges[i+count]) {
                        laser_ranges[i + j] = laser_ranges[i-1]-((j+1)*(diff)/(count));
                    } 
                }
                
            }
        }

        //CONTSTRUCT ARRAY OF USABLE DATA
        for (int i = 0; i < fov_idx; i++){  //construct usable lidar data in fov
            fov_range.push_back(laser_ranges[((range_size - (fov_idx/2)) + i) % (range_size)]);
        }

        int side_start  = static_cast<int>((M_PI/2)*(6/9) / angle_increment);    //refers to starting side index
        for (int i = side_start; i < (side_start + side_idx); i++){ //left side array writing
            left_range.push_back(laser_ranges[i]);
        } 
        int right_start_idx = range_size - side_start - side_idx; 
        for (int i = right_start_idx; i < (right_start_idx + side_idx);i++){    //right side array writing
            right_range.push_back(laser_ranges[i]);
        }

    //DISPARITY DETECTION
    //detects the largest disparity within the fov range
    double largest_disp = -1;   //finds the index and value of the largest range disparity
    double wall_dist = -1;      //finds the distance to the inside turning wall
    double far_dist = -1;
    int largest_disp_idx = -1;             
    int steering_angle_center_idx = fov_idx/2;
    int turn_idx = 0;
    int correction_idx;
    bool left = false;
    
    for (int i = 1; i < (fov_idx - 1); i++){ 

        double curr = fov_range[i];
        double next = fov_range[i + 1];

        if (std::abs((curr - next)) > largest_disp){  //checks if the disparity is the largest found
            largest_disp = std::abs(curr - next);     //writes the new largest disparitty
            largest_disp_idx = i;                     //writes the new largest index
            wall_dist = std::min(curr,next);
            far_dist = std::max(curr,next);
        }
    }
    
    //CORRECTION ANGLE 
    //uses lidar data to determine the minimimum turn-away distance
    //also finds any larger gaps near the disparity
    correction_idx = static_cast<int>(std::atan((wheelbase/2)/wall_dist)/angle_increment);
    double left_avg = 0;    //sum of range data on left
    double right_avg = 0;   //sum of range data on right
    //int fov_center_idx = fov_idx /2;

    int dir_idx = 0;
    while (dir_idx < average_ind && largest_disp_idx + dir_idx < fov_idx){  
        left_avg = left_avg + fov_range[largest_disp_idx + dir_idx];
        dir_idx++;
    }
    left_avg = left_avg / dir_idx;  //averages the data on the left side of the disparity

    dir_idx = 0;
    while (dir_idx < average_ind && largest_disp_idx - dir_idx > 0){
        right_avg = right_avg + fov_range[largest_disp_idx - dir_idx];
        dir_idx++;
    }
    right_avg = right_avg / dir_idx; //averages the data on the right side of the disparity
    /*
    right_avg < left_avg or largest_disp_idx > fov_center_idx //drives left
    right_avg > left_avg or largest_disp_idx < fov_center_idx //drives right
    */
    //Drives towards the furthest gap 
    if (right_avg < left_avg ){   // more gaps on the left
        turn_idx = correction_idx;
            while (fov_range[largest_disp_idx + 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) < fov_idx ){ //looks for additional gaps on the left
                turn_idx++;
            }
        left = true;
    }      
    if (right_avg > left_avg){        //more gaps on the right
        turn_idx = -correction_idx;
            while (fov_range[largest_disp_idx - 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) > 0 ){ //looks for additional gaps on the right
                turn_idx--;
            }
        left = false;             
    }
    

    //WRITE STEERING ANGLE 
    //but if there is an imminent obstacle in the turn direction, continue straight
    double steering_angle = (largest_disp_idx + turn_idx - steering_angle_center_idx)*angle_increment; //finds the steering angle toward the disparity point
	double side_clearance = wheelbase;  //MAY NEED TO CHANGE THIS IF TRACK IS REALLY NARROW BUT IT MAY BREAK IT
    left = (steering_angle >= 0); //if left was wrong before it is fixed now

    if (left){  //turning left wall
        int count_side = 0;
        for (size_t i = 0; i < left_range.size(); i++) {
            if (left_range[i] < side_clearance){
                count_side++;
            }
        }
        if (count_side > straight_threshold){
            steering_angle = 0;
        }
    }

    if (!left){ //turning right wall 
        int count_side = 0;
        for (size_t i = 0; i < right_range.size(); i++) {
            if (right_range[i] < side_clearance){
                count_side++;
            }
        }
        if (count_side > straight_threshold){
            steering_angle = 0;
        }
    }
    
    //TURN CORRECTION
    //must recieve 2 consecutive direction change commands to parse turning
    /*
    if (left != prev_left && !changedir){
        changedir = true;
        steering_angle = prev_angle;
    } else if (left == prev_left && changedir){
        changedir = false;
    }
    
    prev_angle = steering_angle;
    prev_left = left;
    */ 
    steering_angle = std::max(-max_steering_angle, std::min(max_steering_angle, steering_angle));
    

    //DRIVE SPEED CONTROLLER
    double center_avg = 0;
    double center_count = 0;
    for (int i = steering_angle_center_idx - average_ind/2; i < steering_angle_center_idx + average_ind/2; i++){
        center_avg = center_avg + fov_range[i];
        center_count++;
    }
    center_avg = center_avg / center_count;

    if (center_avg > 5){  //speed control
        drive_msg.speed = 2.5;
    } else if (center_avg > 3){
        drive_msg.speed = 0.5*center_avg; 
    } else {
        drive_msg.speed = 1;
    }
    
    drive_msg.speed = drive_msg.speed;
    //drive_msg.speed = 1;
    
    drive_msg.steering_angle = steering_angle;
  	drive_st_msg.drive = drive_msg;
  	drive_pub.publish(drive_st_msg);

    //debugging print statements:
    if (debug){
        std::cout << boolalpha;
        std::cout << "LEFT?: " << left << std::endl;
        std::cout << "disp_index: "<< largest_disp_idx << std::endl;
        std::cout << "Correction_index: " << correction_idx << std::endl;
        std::cout << "Steering angle:" << steering_angle << std::endl;
        std::cout << "Speed: " << drive_msg.speed << std::endl;
        std::cout << "largest disparity: " << largest_disp << std::endl; 
        std::cout << "Nearest wall: " << wall_dist << std::endl;
        std::cout << "Farthest wall: " << far_dist << std::endl;
        std::cout << "front: " << center_avg << std::endl;
        std::cout <<"--SEPERATOR--" << std::endl;
        //std::cout << "Starting ind: " << laser_range_raw[range_size - 1] << " Ending ind: " << range_size << std::endl;


    
        bool bad = false;
        for (int j = 0; j < fov_idx; j++){ //prints all measured lidar values
            if (fov_range[j] == INFINITY){
                bad = true;
            }
        }
        if(bad){
            for (int j = 0; j < fov_idx; j++){
                std::cout << fov_range[j] << ", ";
            }
            std::cout << std::endl <<"--SEPERATOR--" << std::endl;
            for (int j = 0; j < range_size; j++){
            std::cout << laser_range_raw[j] << ", ";
        }
    }
    std::cout << endl << "---END SEPERATOR---" << endl;
    }
    }
};
// end of class definition


int main(int argc, char ** argv) {
    ros::init(argc, argv, "disparity_extender");
    disparity_extender de;
    ros::spin();
    return 0;
}
