#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "std_msgs/Int32.h"
#include "std_msgs/Float64.h"
#include <cmath>

class LapCounter {
public:
    LapCounter() : nh_("~"), start_point_set_(false), lap_counter_(0), left_threshold_(false), timing_started_(false) {
        nh_.param<double>("lap_threshold", lap_threshold_, 2.5); // Define a threshold for completing a lap
        odom_sub_ = nh_.subscribe("/odom", 1, &LapCounter::odomCallback, this);
        lap_count_pub_ = nh_.advertise<std_msgs::Int32>("/lap_count", 1);
        lap_time_pub_ = nh_.advertise<std_msgs::Float64>("/lap_time", 1);
        lap_distance_timer_ = nh_.createTimer(ros::Duration(1.0), &LapCounter::printDistance, this);
        lap_count_timer_ = nh_.createTimer(ros::Duration(1.0), &LapCounter::printLapCount, this);
    }

    void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
        double linear_speed = std::sqrt(std::pow(msg->twist.twist.linear.x, 2) +
                                        std::pow(msg->twist.twist.linear.y, 2) +
                                        std::pow(msg->twist.twist.linear.z, 2));

        if (!timing_started_ && linear_speed > 0.0) {
            lap_start_time_ = ros::Time::now();
            timing_started_ = true;
            ROS_INFO("Timing started at: %.2f", lap_start_time_.toSec());
        }

        if (!start_point_set_) {
            // Record the starting point
            start_point_ = msg->pose.pose.position;
            start_point_set_ = true;
        } else {
            // Calculate the distance from the starting point
            current_distance_ = calculateDistance(msg->pose.pose.position, start_point_);
            if (!left_threshold_ && current_distance_ >= lap_threshold_) {
                left_threshold_ = true; // Car has left the initial threshold
            }
            if (left_threshold_ && current_distance_ < lap_threshold_) {
                // Car has crossed the initial threshold and re-entered it, increment lap counter
                lap_counter_++;
                ros::Time now = ros::Time::now();
                if (timing_started_) {
                    ros::Duration lap_time = now - lap_start_time_;
                    publishLapTime(lap_time.toSec());
                    ROS_INFO("Lap completed. Lap Count: %d, Lap Time: %.2f seconds", lap_counter_, lap_time.toSec());
                }
                lap_start_time_ = now; // Reset the start time for the next lap
                timing_started_ = true;
                publishLapCount();
                left_threshold_ = false; // Reset the flag
            }
        }
    }

    void publishLapCount() {
        std_msgs::Int32 lap_count_msg;
        lap_count_msg.data = lap_counter_;
        lap_count_pub_.publish(lap_count_msg);
    }

    void publishLapTime(double lap_time) {
        std_msgs::Float64 lap_time_msg;
        lap_time_msg.data = lap_time;
        lap_time_pub_.publish(lap_time_msg);
    }

    void printDistance(const ros::TimerEvent&) {
        ROS_INFO("Distance from Starting Point: %.2f meters", current_distance_);
    }

    void printLapCount(const ros::TimerEvent&) {
        ROS_INFO("Lap Count: %d", lap_counter_);
    }

private:
    ros::NodeHandle nh_;
    ros::Subscriber odom_sub_;
    ros::Publisher lap_count_pub_;
    ros::Publisher lap_time_pub_;
    ros::Timer lap_distance_timer_;
    ros::Timer lap_count_timer_;
    geometry_msgs::Point start_point_;
    bool start_point_set_;
    double lap_threshold_;
    int lap_counter_;
    bool left_threshold_;
    bool timing_started_;
    ros::Time lap_start_time_;
    double current_distance_;

    double calculateDistance(const geometry_msgs::Point& p1, const geometry_msgs::Point& p2) {
        // Calculate Euclidean distance between two points
        return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2));
    }
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "lap_counter_node");
    LapCounter lap_counter;
    ros::spin();
    return 0;
}

