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

    // previous desired steering angle
    const double Kp = 1.0;
    const double Ki = 0.0001;
    const double Kd = 1.0;
    double prevError = 0.0;
    double integral = 0.0;
    double prev_angle = 0.0;
    double targetDistance = 0.39;
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
       // size_t range_size = laser_ranges.size();

        
	double angle_increment = laser_msg.angle_increment; //tells the Lidar the angle to scan
	double first_angle_degree = 45;
	double first_angle_radian = first_angle_degree * M_PI / 180.0;
	double second_angle_degree = 315;
	double second_angle_radian = second_angle_degree * M_PI / 180.0;

	//double theta = second_angle_radian - first_angle_radian;       
    size_t first_index = static_cast<size_t>(first_angle_radian / angle_increment); //finds the starting and ending index for laser_ranges
	size_t second_index = static_cast<size_t>(second_angle_radian / angle_increment);


    double largest_disp = -1;   //finds the index and value of the largest range disparity
    double wall_dist = -1;      //finds the distance to the inside turning wall
    int largest_disp_idx = -1;
    bool left;                 //keeps track of turning direction

    /*
    for(size_t i = first_index; i <= second_index - 1;i++){ //rewrite infinites as the previous non infinite number
        if (laser_ranges[i] == INFINITY){
            size_t a = i;
            while (laser_ranges[i] > 30 && a > 0)
            {
                a = a -1;
                laser_ranges[i] = laser_ranges[a];
            }
            
        }
    }
    */

    int steering_angle_center_idx = (second_index - first_index); 

    for (size_t i = first_index; i <= second_index - 1; i++){ 

        double curr = laser_ranges[i];
        double next = laser_ranges[i + 1];

        if (std::abs((curr - next)) > largest_disp){  //checks if the disparity is the largest found
            largest_disp = std::abs(curr - next);     //writes the new largest disparitty
            largest_disp_idx = i;               //writes the new largest index

            if (i <= steering_angle_center_idx){
                left = true;              //its a LEFT turn! THESE WILL CHANGE PER SIM AND IRL
                wall_dist = curr;         
            }  
            if (i > steering_angle_center_idx){
                left = false;               //its a RIGHT turn!
                wall_dist = next;
            }
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

    //std::cout << boolalpha;
    //std::cout << "LEFT?: "<<left<< " Steering angle:" << steering_angle_disp << "correction: " << correction <<std::endl; //print statements for debugging REMOVE LATER
    
    
    
    for (size_t j = first_index; j < second_index; j++){
        std::cout << laser_ranges[j] << ", ";
    }
        std::cout << endl << "---SEPERATOR---" << endl;
    

	//ROS_INFO("[ROBOT] Dist: %f", distance);
	//ROS_INFO("[ROBOT] 90: %f", a);
	//ROS_INFO("[ROBOT] 120: %f", b);
        //ROS_INFO("[ROBOT] Porp: %f", error*Kp);
        //ROS_INFO("[ROBOT] Integ: %f", integral*Ki);
        //ROS_INFO("[ROBOT] Deriv: %f", derivative*Kd);
        //ROS_INFO("[ROBOT] E: %f", error);
        //ROS_INFO("[ROBOT] angle: %f", steering_angle);
    }
};
// end of class definition


int main(int argc, char ** argv) {
    ros::init(argc, argv, "disparity_extender");
    disparity_extender de;
    ros::spin();
    return 0;
}
