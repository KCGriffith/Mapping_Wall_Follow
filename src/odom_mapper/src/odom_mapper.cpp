#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include <deque>
#include "gnuplot-iostream.h"
#include "gazebo_msgs/GetModelState.h"

#define MAX_QUEUE_SIZE 1000

void cb_odom(const nav_msgs::OdometryConstPtr& msg);
void cb_odom_combined(const geometry_msgs::PoseWithCovarianceStampedConstPtr& msg);
void cb_odom_gps(const nav_msgs::OdometryConstPtr& msg);

std::deque<std::pair<float, float>> odom_queue;
std::deque<std::pair<float, float>> odom_combined_queue;
std::deque<std::pair<float, float>> odom_gps_queue;
std::deque<std::pair<float, float>> model_state_queue;
void graph_odom();
Gnuplot gp;

int main(int argc, char** argv) {
    ros::init(argc, argv, "odom_mapper");
    ros::NodeHandle nh;
    ROS_INFO("Odom mapper node started...");

    ros::Subscriber sub_odom = nh.subscribe("/iRobot_0/odom", 1, cb_odom);
    ros::Subscriber sub_odom_combined = nh.subscribe("robot_pose_ekf/odom_combined", 1, cb_odom_combined);
    ros::Subscriber sub_odom_gps = nh.subscribe("/iRobot_0/gps_odom", 1, cb_odom_gps);

    while (true) {
        if (/*sub_odom.getNumPublishers() != 0 &&*/
                sub_odom_combined.getNumPublishers() != 0 &&
                sub_odom_gps.getNumPublishers() != 0) {
            break;
        }
    }

    ros::ServiceClient srv_model_state = nh.serviceClient<gazebo_msgs::GetModelState>("/gazebo/get_model_state");
    gazebo_msgs::GetModelState msg_gms;
    msg_gms.request.model_name = "iRobot";

    ros::Rate loop_rate(4);
    while(ros::ok()) {
        ros::spinOnce();
        srv_model_state.call(msg_gms);
        if (model_state_queue.size() > MAX_QUEUE_SIZE) {
            model_state_queue.pop_front();
        }
        model_state_queue.push_back(std::make_pair(msg_gms.response.pose.position.x, msg_gms.response.pose.position.y));
        graph_odom();
        loop_rate.sleep();
    }

    return 0;
}

void cb_odom(const nav_msgs::OdometryConstPtr& msg) {
    if (odom_queue.size() > MAX_QUEUE_SIZE) {
        odom_queue.pop_front();
    }
    odom_queue.push_back(std::make_pair(msg->pose.pose.position.x, msg->pose.pose.position.y));
}

void cb_odom_combined(const geometry_msgs::PoseWithCovarianceStampedConstPtr& msg) {
    if (odom_combined_queue.size() > MAX_QUEUE_SIZE) {
        odom_combined_queue.pop_front();
    }
    odom_combined_queue.push_back(std::make_pair(msg->pose.pose.position.x, msg->pose.pose.position.y));
}

void cb_odom_gps(const nav_msgs::OdometryConstPtr& msg) {
    if (odom_gps_queue.size() > MAX_QUEUE_SIZE) {
        odom_gps_queue.pop_front();
    }
    odom_gps_queue.push_back(std::make_pair(msg->pose.pose.position.x, msg->pose.pose.position.y));
    //ROS_INFO("Adding GPS x: %f y: %f", msg->pose.pose.position.x, msg->pose.pose.position.y);
}

void graph_odom() {
    gp << "plot '-' with lines title 'Odometry', '-' with lines title 'Odometry Combined', '-' with lines title 'GPS', '-' with lines title 'Model State'\n";
    gp.send1d(odom_queue);
    gp.send1d(odom_combined_queue);
    gp.send1d(odom_gps_queue);
    gp.send1d(model_state_queue);
}