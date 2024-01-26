#include <ackermann_msgs/AckermannDriveStamped.h>
#include <ackermann_msgs/AckermannDrive.h>
#include <nav_msgs/Odometry.h>
#include <iostream>
#include <cstdlib>


class safety {
private:
	// ROS node
	ros::NodeHandle n;

	//car parameters
	double max_speed, max_steering_angle;

	//Odom messages
	ros::Subscriber odom_sub;

	//drive messages;
	ros::Subscriber drive_sub;

	//laser messages
	ros::Subscriber laser_sub;

ackermann_msgs::AckermannDriveStamped drive_st_msg;
ackermann_msgs::AckermannDrive drive_msg;

public:
    safety() {
	n = ros::NodeHandle("~");

	//get topic names
	std::string drive_topic, odom_topic;
	n.getParam("brake_drive_topic" brake_drive_topic);
	n.getParam("scan_topic", scan_topic);
	n.getParam("odom_topic", odom_topic);

	//get car parameters
	n.getParam("max_speed", max_speed);
	n.getParam("max_steering_angle", max_steering_angle);

	// make a publisher for drive messages
	drive_pub = n.advertise<ackermann_msgs::AckermannDriveStamped>(drive_topic, 10);
	laser_sub = n.subscribe(scan_topic, 1, &safety::scan_callback, this);
	void scan_callback(const sensor_msgs::LaserScan & scan_msg);
}

void scan_callback(const sensor_msgs::LaserScan & scan_msg){
    sensor_msgs::LaserScan laser_msg;
    drive_msg.speed = 1;
    drive_msg.steering_angle = 20;
    drive_st_msg.drive = drive_msg;

    }
};

int main(int argc, char ** argv) {
    ros::init(argc, argv, "safety");
    safety s;
    ros::spin();
    return 0;
}



