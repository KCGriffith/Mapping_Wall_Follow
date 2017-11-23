#include "ros/ros.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "spinOnce_node");
    ROS_INFO("Starting spinOnce_node...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(1);
    while (ros::ok()) {
        //most robot code goes here
        ROS_INFO("Looping at a rate of: 1");
        ros::spinOnce();
        loop_rate.sleep();
    }
    ROS_INFO("End of spinOnce_node.");
    return 0;
}