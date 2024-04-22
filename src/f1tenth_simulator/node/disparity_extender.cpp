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
    int inf_max = 12;                  //maximum consecutive ignored infinites
    double fov = 90;   //total fov POSITVE!!!
   
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
                        fov_range[i + j] = fov_range[i - 1];         //write all of the infinites as the first indexed value
                    }
                }

            }
        }

    
        double largest_disp = -1;   //finds the index and value of the largest range disparity
        double wall_dist = -1;      //finds the distance to the inside turning wall
        int largest_disp_idx = -1;
        bool left;                 //keeps track of turning direction
        int steering_angle_center_idx = fov_idx/2;
    
    for (int i = 0; i <= fov_idx - 1; i++){ 

        double curr = fov_range[i];
        double next = fov_range[i + 1];

        if (std::abs((curr - next)) > largest_disp){  //checks if the disparity is the largest found
            largest_disp = std::abs(curr - next);     //writes the new largest disparitty
            largest_disp_idx = i;               //writes the new largest index

            if (i <= steering_angle_center_idx){
                left = false;              //its a right turn!
            }  
            if (i > steering_angle_center_idx){
                left = true;               //its a left turn!
            }
            wall_dist = std::min(curr,next);         
        }
    }

    double correction = std::atan(wheelbase/wall_dist);     //how much should the car turn away from the disparity point
    double steering_angle_disp = ((steering_angle_center_idx - largest_disp_idx)*angle_increment); //finds the steering angle toward the disparity point
    double steering_angle;

    if (left){
         steering_angle = steering_angle_disp - correction;
    } else {
         steering_angle = steering_angle_disp + correction;
    }

	prev_angle = steering_angle; 
    steering_angle = std::max(-max_steering_angle, std::min(max_steering_angle, steering_angle));

    /*
    double a_param = 17;     //slope of speed formula
    double b_param = 5.5;   //translation of speed formula
    double x_angle = std::abs(steering_angle);
  	drive_msg.speed = -a_param*(x_angle)*(x_angle)+ b_param;    // -b*(x)^2 + b
    */

    drive_msg.speed = 1; //safest constant speed
    
    drive_msg.steering_angle = steering_angle;
  	drive_st_msg.drive = drive_msg;
  	drive_pub.publish(drive_st_msg);

    //debugging print statements:

    std::cout << boolalpha;
    //std::cout << "LEFT?: "<<left<< " Steering angle:" << steering_angle_disp << "correction: " << correction <<std::endl; 
    //std::cout << "Starting ind: " << first_index << "Ending ind: " << second_index << std::endl;
    
    
    for (size_t j = 0; j < range_size; j++){ //prints all measured lidar values
        std::cout << laser_ranges[j] << ", ";
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
