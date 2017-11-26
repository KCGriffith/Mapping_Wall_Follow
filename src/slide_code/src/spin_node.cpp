#include "ros/ros.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "spin_node");
    ROS_INFO("Starting spin_node...");
    ros::NodeHandle nh;
    ros::spin();
    ROS_INFO("End of spin_node.");
    return 0;
}