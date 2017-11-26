#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "irobotcreate2/Bumper.h"
#include "irobotcreate2/RoombaIR.h"
#include "irobotcreate2/RoombaSwitch.h"

#define MAX_CLIFF_RANGE 0.062

//This node subscribes to the gazebo irobot sensors and
//transforms them into the sensor msgs used with the
//real irobot

void cb_l(const sensor_msgs::LaserScan::ConstPtr &msg);
void cb_fl(const sensor_msgs::LaserScan::ConstPtr &msg);
void cb_fr(const sensor_msgs::LaserScan::ConstPtr &msg);
void cb_r(const sensor_msgs::LaserScan::ConstPtr &msg);
void cb_b(const sensor_msgs::LaserScan::ConstPtr &msg);

sensor_msgs::LaserScan msg_l;
sensor_msgs::LaserScan msg_fl;
sensor_msgs::LaserScan msg_fr;
sensor_msgs::LaserScan msg_r;
sensor_msgs::LaserScan msg_b;

ros::Publisher pub_cliff;
ros::Publisher pub_bump;

void check_bumper();
void check_cliff(int cliff_id);

int main(int argc, char** argv) {
    ros::init(argc, argv, "gazebo_irobot_sensor_transform");
    ros::NodeHandle nh;
    ROS_INFO("Gazebo iRobot sensor transform node started.");

    ros::Subscriber sub_l = nh.subscribe("/gazebo/sensors/left_cliff", 1, cb_l);
    ros::Subscriber sub_fl = nh.subscribe("/gazebo/sensors/left_front_cliff", 1, cb_fl);
    ros::Subscriber sub_fr = nh.subscribe("/gazebo/sensors/right_front_cliff", 1, cb_fr);
    ros::Subscriber sub_r = nh.subscribe("/gazebo/sensors/right_cliff", 1, cb_r);
    ros::Subscriber sub_b = nh.subscribe("/gazebo/sensors/bump_sensor", 1, cb_b);

    pub_cliff = nh.advertise<irobotcreate2::RoombaIR>("cliff", 1);
    pub_bump = nh.advertise<irobotcreate2::Bumper>("bumper", 1);


    while(sub_l.getNumPublishers() == 0 ||
          sub_fl.getNumPublishers() == 0 ||
          sub_fr.getNumPublishers() == 0 ||
          sub_r.getNumPublishers() == 0 ||
          sub_b.getNumPublishers() == 0) {
        //wait on publishers to connect
    }

    ros::Duration(1.0).sleep();
    //rate of laser scan publishing in the model file is 40, if
    //that is changed, this should be changed
    ros::Rate loop_rate(40);
    //cliff sensors in the robot driver send the sensors sequentially one
    //at a time, so we must keep a counter for which current sensor to publish
    int cliff_count = 0;
    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
        check_bumper();
        check_cliff(cliff_count);
        //ROS_INFO("Sending cliff: %i", cliff_count);
        cliff_count++;
        if (cliff_count == 4) {
            cliff_count = 0;
        }

    }
}

void check_bumper() {
    bool left_on = false;
    bool right_on = false;
    int num_range = msg_b.ranges.size();
    double max_range = msg_b.range_max;
    //check if an object has crossed passed a treshold of 5% from the start of the sensor
    //the ros msg has a small rounding error and this checks for possible noise even though
    //there should be none
    double error_range = max_range * 0.95;
    int center = num_range / 2;
    for (int i = 0; i < center; i++) {
        //check the right bumper
        if (msg_b.ranges[i] < error_range) {
            right_on = true;
        }
    }
    for (int i = center; i < num_range; i++) {
        //check the left bumper
        if (msg_b.ranges[i] < error_range) {
            left_on = true;
        }
    }
    //Publish msg to real bumper topic
    irobotcreate2::Bumper msg;
    irobotcreate2::RoombaSwitch msg_left;
    irobotcreate2::RoombaSwitch msg_right;
    msg_left.state = left_on;
    msg_right.state = right_on;
    msg.left = msg_left;
    msg.right = msg_right;
    pub_bump.publish(msg);
}

void check_cliff(int cliff_id) {
    irobotcreate2::RoombaIR msg;
    if (cliff_id == 0) {
        msg.signal = 0;
        if (msg_l.ranges[1] > MAX_CLIFF_RANGE) {
            msg.state = true;
        }
    }
    if (cliff_id == 1) {
        msg.signal = 1;
        if (msg_fl.ranges[1] > MAX_CLIFF_RANGE) {
            msg.state = true;
        }
    }
    if (cliff_id == 2) {
        msg.signal = 2;
        if (msg_fr.ranges[1] > MAX_CLIFF_RANGE) {
            msg.state = true;
        }

    }
    if (cliff_id == 3) {
        msg.signal = 3;
        if (msg_r.ranges[1] > MAX_CLIFF_RANGE) {
            msg.state = true;
        }
    }
    pub_cliff.publish(msg);
}

void cb_l(const sensor_msgs::LaserScan::ConstPtr &msg) {
    msg_l = *msg;
}

void cb_fl(const sensor_msgs::LaserScan::ConstPtr &msg) {
    msg_fl = *msg;
}

void cb_fr(const sensor_msgs::LaserScan::ConstPtr &msg) {
    msg_fr = *msg;
}

void cb_r(const sensor_msgs::LaserScan::ConstPtr &msg) {
    msg_r = *msg;
}

void cb_b(const sensor_msgs::LaserScan::ConstPtr &msg) {
    msg_b = *msg;
}