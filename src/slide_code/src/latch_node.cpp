#include "ros/ros.h"
#include "std_msgs/Int64.h"

int main(int argc, char** argv) {
    ros::init(argc, argv, "latch_node");
    ROS_INFO("Starting latch_node...");
    ros::NodeHandle nh;

    ros::Publisher pub =
            nh.advertise<std_msgs::Int64>
                    ("/latch_msg", 1, true);

    std_msgs::Int64 msg;
    msg.data = 1;

    pub.publish(msg);

    ros::spin();
    ROS_INFO("End of latch_node.");
    return 0;
}