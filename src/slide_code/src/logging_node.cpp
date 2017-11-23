#include "ros/ros.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "logging_node");
    ROS_INFO("Starting logging_node...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(1);
    while (ros::ok()) {
        //most robot code goes here
        ROS_DEBUG("This is the ROS_DEBUG.");
        ROS_INFO("This is the ROS_INFO.");
        ROS_WARN("This is the ROS_WARN.");
        ROS_ERROR("This is the ROS_ERROR.");
        ROS_FATAL("This is the ROS_FATAL.");
        std::cout << std::endl;
        ros::spinOnce();
        loop_rate.sleep();
    }
    ROS_INFO("End of logging_node.");
    return 0;
}