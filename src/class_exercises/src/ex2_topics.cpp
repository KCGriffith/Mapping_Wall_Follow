#include "ros/ros.h"
//----include laser
//----include twist

//----left callback
//----right callback

bool path_blocked = false;

int main(int argc, char** argv) {
    ros::init(argc, argv, "ex2_topics");
    ROS_INFO("Starting ex2_topics node...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(10);

    //----subscriber
    //----subscriber

    //----publisher

    while(ros::ok()) {
        if (path_blocked) {
            //----
        }
        else {
            //----
        }
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

void callback_llaser(const sensor_msgs::LaserScan::ConstPtr& msg) {
    //----
}

void callback_rlaser(const sensor_msgs::LaserScan::ConstPtr& msg) {
    //----
}
