#include "ros/ros.h"
#include "class_exercises/behavior.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "ex3_msg");
    ROS_INFO("Starting ex3_msg node...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(1);

    ros::Publisher pub_vel =
            nh.advertise<class_exercises::behavior>
                    ("/behavior", 1);

    while(ros::ok()) {
        class_exercises::behavior msg_bh;
        msg_bh.active = true;
        msg_bh.vel_fw = 1.0;
        msg_bh.vel_turn = -1.0;
        pub_vel.publish(msg_bh);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
