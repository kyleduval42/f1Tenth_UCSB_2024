#include <ros/ros.h>

#include <geometry_msgs/PoseStamped.h>

class PosetoPoseWithCovariance {
    
private:
  ros::NodeHandle n;
  ros::Publisher new_pose;
  ros::Subscriber pose;
 
public:
  PosetoPoseWithCovariance() {
    n = ros::NodeHandle("~");
    new_pose = n.advertise<geometry_msgs::PoseStamped>("/navigate_goal", 1000);
    pose = n.subscribe("/rviz_requested_goal", 1000, &PosetoPoseWithCovariance::pose_callback, this);
  }
  
  /*void convert_and_publish(const geometry_msgs::PoseStamped & pose) {
    geometry_msgs::PoseWithCovarianceStamped pose_with_cov;
    
    pose_with_cov.header = pose.header;
    pose_with_cov.pose.pose = pose.pose;
    
    new_pose.publish(pose_with_cov);
  }*/
  
  void pose_callback(const geometry_msgs::PoseStamped & pose) {
    //convert_and_publish(pose);
    new_pose.publish(pose);
  }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "posestamped_to_posewithcovariancestamped_converter");
    PosetoPoseWithCovariance converter;
    ros::spin();
    return 0;
}
