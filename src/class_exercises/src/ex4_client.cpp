#include "ros/ros.h"
//----include service type

int main(int argc, char** argv) {
    ros::init(argc, argv, "ex4_client");
    ROS_INFO("Starting ex4_client node...");
    ros::NodeHandle nh;
    
    //----define client

    double x = std::atof(argv[1]);
    double y = std::atof(argv[2]);

    //----prepare to call service

    if (client.call(srv)) {
        ROS_INFO("Distance to (%f,%f): %.15f", x, y,
                 srv.response.distance);
    } else {
        ROS_INFO("Failed to call service for (%f,%f)", x ,y);
    }

    return 0;
}
