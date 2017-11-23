#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "ex2_topics");
    ROS_INFO("Creating publisher node from slides...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(10);

    ros::Publisher pub_vel =
            nh.advertise<geometry_msgs::Twist>
                    ("/iRobot_0/cmd_vel", 1);

    while(ros::ok()) {
        geometry_msgs::Twist msg_move;
        msg_move.linear.x = 1;
        pub_vel.publish(msg_move);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}