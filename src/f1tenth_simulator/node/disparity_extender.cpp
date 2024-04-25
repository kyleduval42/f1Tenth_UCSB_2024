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
    int inf_max = 50;                  //maximum consecutive ignored infinites
    double fov = 150;                    //total fov POSITVE!!!
   
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
        sensor_msgs::LaserScan laser_msg;
        laser_msg = scan_msg;
        std::vector<float> laser_ranges;
        laser_ranges = laser_msg.ranges;
        size_t range_size = laser_ranges.size();
        std::vector<float> fov_range; 
        

	    double angle_increment = laser_msg.angle_increment; //tells the Lidar the angle to scan
	    double fov_rad = (fov) * M_PI / 180.0;
	    int fov_idx = static_cast<int>(fov_rad / angle_increment); //indexing fov ranges from lidar

        for (int i = 0; i < fov_idx; i++){  //construct usable lidar data
            fov_range.push_back(laser_ranges[((range_size - (fov_idx/2)) + i) % range_size]);
        }


    
        for(int i = 0 + 1; i <= fov_idx - inf_max;i++){ //rewrite infinites as the previous non infinite number if less than inf_max consecutive infinties
            if (fov_range[i] == INFINITY){
                int count = 1;

                while (count < inf_max && fov_range[i + count] == INFINITY){ //while counting to inf_max until it hits a non infinte number
                    count++;
                }

                if (count < inf_max){                                 //if there were under inf_max consecutive infinites
                    for (int j = 0; j < count; j++){
                        if (fov_range[i-1] < fov_range[i+count]) {
                            fov_range[i + j] = fov_range[i-1]+(j+1)*((fov_range[i + count]-fov_range[i - 1])/count);
                        } else if (fov_range[i-1] > fov_range[i+count]) {
                            fov_range[i + j] = fov_range[i-1]-(j+1)*((fov_range[i - 1] - fov_range[i + count])/count);
                        }
                        
                    }
                }
            }
        }

        for (int i = fov_idx - inf_max; i < fov_idx; i++ ){ //overwrites infinites near the end
            int count = 1;
            while (fov_range[i] == INFINITY && i > 0){
                fov_range[i] = fov_range[i - count];
                count++;
            }
        }

    
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
    
    double curr_disp = fov_range[largest_disp_idx];
    double next_disp = fov_range[largest_disp_idx+1];
    correction_idx = static_cast<int>(std::atan(wheelbase/wall_dist)/angle_increment);

    if (largest_disp_idx < steering_angle_center_idx){   //determine steering angle index
        turn_idx = turn_idx + correction_idx;
            while (fov_range[largest_disp_idx + 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) < fov_idx ){
                turn_idx++;
            }
            left = false;
              
    if (largest_disp_idx > steering_angle_center_idx){
        turn_idx = turn_idx - correction_idx;
            while (fov_range[largest_disp_idx - 1 + turn_idx] >= far_dist && (turn_idx + largest_disp_idx) > 0 ){
                turn_idx--;
            }             
        }
                left = true;
    }

    double steering_angle = (largest_disp_idx - steering_angle_center_idx + turn_idx)*angle_increment; //finds the steering angle toward the disparity point

	prev_angle = steering_angle; 
    steering_angle = std::max(-max_steering_angle, std::min(max_steering_angle, steering_angle));
    
    
    if (fov_range[steering_angle_center_idx] > 4){  //speed control
        drive_msg.speed = 2;
    } else if (fov_range[steering_angle_center_idx] > 1.5){
        drive_msg.speed = 0.5*fov_range[steering_angle_center_idx]; 
    } else {
        drive_msg.speed = 0.7;
    }
    

    //drive_msg.speed = 1; 
    
    drive_msg.steering_angle = steering_angle;
  	drive_st_msg.drive = drive_msg;
  	drive_pub.publish(drive_st_msg);

    //debugging print statements:

    std::cout << boolalpha;
    std::cout << "LEFT?: " << left << std::endl;
    std::cout << "Steering index: "<< largest_disp_idx << std::endl;
    std::cout << "largest disparity: " << largest_disp << std::endl;
    std::cout << "Steering angle:" << steering_angle << std::endl;
    std::cout << "Correction_index: " << correction_idx << std::endl; 
    std::cout << "Nearest wall: " << wall_dist << std::endl;
    std::cout << "Farthest wall: " << far_dist << std::endl;
    //std::cout <<"--SEPERATOR--" << std::endl;
    //std::cout << "Starting ind: " << first_index << "Ending ind: " << second_index << std::endl;
    
    
    for (int j = 0; j < fov_idx; j++){ //prints all measured lidar values
        std::cout << fov_range[j] << ", ";
    }
        std::cout << endl << "---SEPERATOR---" << endl;
    
    }
};
// end of class definition


int main(int argc, char ** argv) {
    ros::init(argc, argv, "disparity_extender");
    disparity_extender de;
    ros::spin();
    return 0;
}
