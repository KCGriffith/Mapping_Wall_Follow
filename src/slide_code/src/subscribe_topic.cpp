#include "ros/ros.h"
#include "nav_msgs/Odometry.h"

void callback_gps(const nav_msgs::Odometry::ConstPtr& msg);

int main(int argc, char** argv) {
    ros::init(argc, argv, "slides_topic");
    ROS_INFO("Creating node from topic slides...");
    ros::NodeHandle nh;

    ros::Subscriber sub_gps =
            nh.subscribe("/iRobot_0/gps_odom", 1, callback_gps);

    ros::spin();
    return 0;
}

void callback_gps(const nav_msgs::Odometry::ConstPtr& msg) {
    ROS_INFO("GPS Received:");
    ROS_INFO(" Xpos: %f", msg->pose.pose.position.x);
    ROS_INFO(" Ypos: %f", msg->pose.pose.position.y);
}