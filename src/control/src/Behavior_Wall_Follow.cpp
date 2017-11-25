#include "ros/ros.h"
#include "control/behavior.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"

//Thanks again to will for providing a much better template
//of how to organize this code.


#define BH_WALLFOLLOW_RATE 1000

//#include <iostream>
//----include laser
//----include twist

//----bump sensor callback



double left_scan;
double right_scan;
double left_trig;
double right_trig;
bool found_wall;
bool left_scan_dom = false;
bool right_scan_dom = false;

void Process_behavior(control::behavior msg, ros::Publisher pub);
void Left_laser_callback(const sensor_msgs::LaserScan::ConstPtr& msg);
void Right_laser_callback(const sensor_msgs::LaserScan::ConstPtr& msg);



int main(int argc, char** argv) {
    ros::init(argc, argv, "Behavior_Wall_Follow");
    ROS_INFO("Starting Behavior_Wall_Follow...");
    ros::NodeHandle nh;
    ros::Rate loop_rate(BH_WALLFOLLOW_RATE);

    //----subscriber
    ros::Subscriber sub_right_laser =
	   nh.subscribe("/iRobot_0/right_side_scan", 1, Right_laser_callback);
    //----subscriber
    ros::Subscriber sub_left_laser =
	   nh.subscribe("/iRobot_0/left_side_scan", 1, Left_laser_callback);
    //----publisher
    ros::Publisher pub_vel = 
           nh.advertise<control::behavior>("behavior/wallFollow", 1);


    while(ros::ok()) {
	control::behavior msg_Follow;
	Process_behavior(msg_Follow, pub_vel);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

void Left_laser_callback(const sensor_msgs::LaserScan::ConstPtr& msg){
	left_trig = msg->ranges[1];
	if(msg->ranges[1] <= 1.2){
		left_scan_dom = true;
		left_scan = msg->ranges[0] - msg->ranges[2];
	} else {
		left_scan_dom = false;
	}
}

void Right_laser_callback(const sensor_msgs::LaserScan::ConstPtr& msg){
	right_trig = msg->ranges[1];
	if(msg->ranges[1] <= 1.2){
		right_scan_dom = true;
		right_scan = msg->ranges[2] - msg->ranges[0];
	} else {
		right_scan_dom = false;
	}
}

void Process_behavior(control::behavior msg, ros::Publisher pub){

	if(left_scan_dom && right_scan_dom){
		if(right_trig < left_trig){
			left_scan_dom = false;
		}
		if(left_trig < right_trig){
			right_scan_dom = false;
		}
	}

	if(right_scan_dom == true){
		ROS_INFO("I'm on right scan");
		if(right_scan > 0){
			msg.active = true;
			msg.vel_fw = 0.25f;
			msg.vel_turn = 0.3f;
			}
		if(right_scan < 0){
			msg.active = true;
			msg.vel_fw = 0.25f;
			msg.vel_turn = -0.3f;
			}
	} else if(left_scan_dom == true){
		ROS_INFO("I'm on left scan");
		if(left_scan > 0){
			msg.active = true;
			msg.vel_fw = 0.25f;
			msg.vel_turn = -0.3f;
			}
		if(left_scan < 0){
			msg.active = true;
			msg.vel_fw = 0.25f;
			msg.vel_turn = 0.3f;
			}
	}
	pub.publish(msg);
}
