#include "ros/ros.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "blank_node");
    ROS_INFO("Starting blank_node...");
    ros::NodeHandle nh;
    ROS_INFO("End of blank_node.");
    return 0;
}