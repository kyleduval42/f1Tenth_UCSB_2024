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
    double fov = 150;                    //total fov POSITVE!!!
    double side_fov = 45;           //fov angle for side control
    int average_ind = 5; //Write average lookahead index MAY NEED TO CHANGE
    int straight_threshold = 5;
   
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
        size_t range_size = laser_ranges.size();
        std::vector<float> fov_range; 
        std::vector<float> left_range;
        std::vector<float> right_range;
        
	    double angle_increment = laser_msg.angle_increment; //tells the Lidar the angle to scan
	    double fov_rad = (fov) * M_PI / 180.0;
	    int fov_idx = static_cast<int>(fov_rad / angle_increment); //indexing fov ranges from lidar
        double side_rad = (side_fov) * M_PI / 180.0;
	    int side_idx = static_cast<int>(side_rad / angle_increment); //fpr indexing the side view lidar

        for (int i = 0; i < fov_idx; i++){  //construct usable lidar data in fov
            fov_range.push_back(laser_ranges[((range_size - (fov_idx/2)) + i) % (range_size-1)]);
        }
        size_t fov_range_size = fov_range.size();

        for (int i = fov_idx/2; i < (fov_idx/2 + side_idx)){ //left side array writing
            left_range.push_back(laser_ranges[i]);
        } 
        int right_start_idx = range_size - (fov_idx/2) - side_idx; 
        for (int i = right_start_idx; i < (right_start_idx + side_idx);i++){    //right side array writing
            right_range.push_back(laser_ranges[i])
        }    
        
        //INFINITE ERROR INTERPOLATION
        //rewrite infinites as the previous non infinite number linearly scaling to the next
        for(int i = 0 + 1; i < fov_idx;i++){ 
            if (fov_range[i] > 50 ){
                int count = 0;

                while (fov_range[i + count] > 50 && i + count < fov_idx){ //while counting until it hits a non infinte number
                    count++;
                }
                for (int j = 0; j <= count; j++){        //linearly scales the infinites
                    if (fov_range[i-1] < fov_range[i+count+1]) {
                        fov_range[i + j] = fov_range[i-1]+(j+1)*((fov_range[i + count+1]-fov_range[i - 1])/(count+1));
                    } else if (fov_range[i-1] > fov_range[i+count+1]) {
                        fov_range[i + j] = fov_range[i-1]-(j+1)*((fov_range[i - 1] - fov_range[i + count + 1])/(count+1));
                    }  
                }
            }
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
    
    for (int i = 1; i < fov_idx - 1; i++){ 

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
    correction_idx = static_cast<int>(std::atan(wheelbase/wall_dist)/angle_increment);
    double left_avg = 0;    //sum of range data on left
    double right_avg = 0;   //sum of range data on right

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

    
    if (left_avg > right_avg){   // more gaps on the left
        turn_idx = correction_idx;
            while (fov_range[largest_disp_idx + 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) < fov_idx ){ //looks for additional gaps on the left
                turn_idx++;
            }
        left = true;
    }      
    if (left_avg < right_avg){         //more gaps on the right
        turn_idx = -correction_idx;
            while (fov_range[largest_disp_idx - 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) > 0 ){ //looks for additional gaps on the right
                turn_idx--;
            }
        left = true;             
    }
    
    //WRITE STEERING ANGLE 
    //but if there is an imminent obstacle in the turn direction, continue straight
    double steering_angle = (largest_disp_idx + turn_idx - steering_angle_center_idx)*angle_increment; //finds the steering angle toward the disparity point
	if (left){  //turning left wall
        int count_side = 0;
        for (size_t i = 0; i < left.size(); i++) {
            if (left_range[i] > wheelbase/2){
                count++
            }
        }
        if (count > straight_threshold){
            steering_angle = 0;
        }
    }

    if (!left){ //turning right wall
        int count_side = 0;
        for (size_t i = 0; i < right.size(); i++) {
            if (right_range[i] > wheelbase/2){
                count++
            }
        }
        if (count > straight_threshold){
            steering_angle = 0;
        }
    }

    
    prev_angle = steering_angle; 
    steering_angle = std::max(-max_steering_angle, std::min(max_steering_angle, steering_angle));
    
    /*
    //DRIVE SPEED CONTROLLER
    if (fov_range[steering_angle_center_idx] > 4){  //speed control
        drive_msg.speed = 2;
    } else if (fov_range[steering_angle_center_idx] > 1.5){
        drive_msg.speed = 0.5*fov_range[steering_angle_center_idx]; 
    } else {
        drive_msg.speed = 0.7;
    }
    */
    drive_msg.speed = 1;
    
    drive_msg.steering_angle = steering_angle;
  	drive_st_msg.drive = drive_msg;
  	drive_pub.publish(drive_st_msg);

    //debugging print statements:

    std::cout << boolalpha;
    std::cout << "LEFT?: " << left << std::endl;
    std::cout << "Steering index: "<< largest_disp_idx << std::endl;
    std::cout << "Correction_index: " << correction_idx << std::endl;
    std::cout << "Steering angle:" << steering_angle << std::endl;
    std::cout << "angle increment: " << angle_increment << std::endl;
    std::cout << "largest disparity: " << largest_disp << std::endl; 
    std::cout << "Nearest wall: " << wall_dist << std::endl;
    std::cout << "Farthest wall: " << far_dist << std::endl;
    //std::cout <<"--SEPERATOR--" << std::endl;
    //std::cout << "Starting ind: " << first_index << "Ending ind: " << second_index << std::endl;
    
    
    for (int j = 0; j < fov_idx; j++){ //prints all measured lidar values
        std::cout << fov_range[j] << ", ";
    }
    
        std::cout << endl << "---END SEPERATOR---" << endl;
    
    }
};
// end of class definition


int main(int argc, char ** argv) {
    ros::init(argc, argv, "disparity_extender");
    disparity_extender de;
    ros::spin();
    return 0;
}
