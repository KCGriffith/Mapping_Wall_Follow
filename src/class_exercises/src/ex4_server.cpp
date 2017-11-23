#include "ros/ros.h"
//----include odometry type
//----include service type


//----declare gps callback
nav_msgs::Odometry current_gps;
bool distance_to(//----declare request,
                 //----declare response);

int main(int argc, char** argv) {
    ros::init(argc, argv, "ex4_server");
    ROS_INFO("Starting ex4_server node...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(10);

    //----subscriber

    //----define server

    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

//----define gps callback

bool distance_to(//----) {
    //----calculate dist_x
    //----calculate dist_y
    double distance = sqrt(pow(dist_x, 2) + pow(dist_y, 2));
    //----set response
    return true;
}
