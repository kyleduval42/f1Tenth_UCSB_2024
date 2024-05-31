#include "ros/ros.h"
#include "std_msgs/Float32MultiArray.h"
#include "nav_msgs/Odometry.h"
#include "std_msgs/Float32.h"
#include <iostream>
#include <cmath>

class MyNode {
public:
    MyNode() {
        // Subscribe to topics
        sorted_corners_x_sub = nh.subscribe("/sorted_corners_x", 10, &MyNode::sortedCornersXCallback, this);
        sorted_corners_y_sub = nh.subscribe("/sorted_corners_y", 10, &MyNode::sortedCornersYCallback, this);
        angles_sub = nh.subscribe("/angles", 10, &MyNode::anglesCallback, this);
        odom_sub = nh.subscribe("/odom", 10, &MyNode::odomCallback, this);
        // Publisher for the speed value
        speed_pub = nh.advertise<std_msgs::Float32>("speed", 1);
    }

    void sortedCornersXCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
        sorted_corners_x_data = *msg;
        processData();
    }

    void sortedCornersYCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
        sorted_corners_y_data = *msg;
        processData();
    }

    void anglesCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
        angles_data = *msg;
        processData();
    }

    void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
        odom_data = *msg;
        processData();
    }

    void processData() {
        // Check if all data has been received
        if (sorted_corners_x_data.data.size() > 0 && sorted_corners_y_data.data.size() > 0 && angles_data.data.size() > 0) {
            // Find the nearest curvature point
            double min_distance = std::numeric_limits<double>::max();
            int nearest_index = -1;
            double robot_x = odom_data.pose.pose.position.x;
            double robot_y = odom_data.pose.pose.position.y;

            for (size_t i = 0; i < sorted_corners_x_data.data.size(); ++i) {
                double dx = sorted_corners_x_data.data[i] - robot_x;
                double dy = sorted_corners_y_data.data[i] - robot_y;
                double distance = std::sqrt(dx * dx + dy * dy);
                if (distance < min_distance) {
                    min_distance = distance;
                    nearest_index = i;
                }
            }

            if (nearest_index != -1) {
                double curvature_angle = angles_data.data[nearest_index];
                adjustSpeed(curvature_angle, min_distance);
            }
        }
    }

    void adjustSpeed(double curvature_angle, double distance) {
        // Simple proportional controller for speed based on curvature angle
        double base_speed = 3.0; // base speed
        double max_speed = 4.0;  // maximum speed
        double min_speed = 0.5;  // minimum speed
        double speed_reduction_factor = 0.5; // factor to reduce speed by based on curvature

        // Adjust speed based on curvature angle
        double speed = base_speed / (1.0 + std::abs(curvature_angle) * speed_reduction_factor);
        speed = std::min(std::max(speed, min_speed), max_speed);

        std_msgs::Float32 speed_msg;
        speed_msg.data = speed;  // Publish speed as a float
        speed_pub.publish(speed_msg);
    }

private:
    ros::NodeHandle nh;
    ros::Subscriber sorted_corners_x_sub;
    ros::Subscriber sorted_corners_y_sub;
    ros::Subscriber angles_sub;
    ros::Subscriber odom_sub;
    ros::Publisher speed_pub;
    std_msgs::Float32MultiArray sorted_corners_x_data;
    std_msgs::Float32MultiArray sorted_corners_y_data;
    std_msgs::Float32MultiArray angles_data;
    nav_msgs::Odometry odom_data;
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "subscriber_node");
    MyNode node;
    ros::spin();
    return 0;
}

