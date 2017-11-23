#ifndef CLASS_HOMEWORK_ARBITER_H
#define CLASS_HOMEWORK_ARBITER_H

#define BH_ARBITER_RATE 10

#include <vector>
#include <queue>
#include "ros/ros.h"
#include "control/behavior.h"
#include "geometry_msgs/Twist.h"

#define PRIORITY_WANDER 0
#define PRIORITY_COLLISION_AVOID 1
#define PRIORITY_COLLISION_RECOVER 2

//comparison function for priority queue
//function is outside of class because it was simpler
//in order to be inside of the class, there had to be workarounds
//that made it not worth the trouble for this simple use
bool compare_priorities(std::pair<int, control::behavior> a,
             std::pair<int, control::behavior> b) {
    return a.first < b.first;
}

class Arbiter {
  public:
    
    Arbiter();
    void process_behaviors();

  private:
    ros::NodeHandle nh;

    //Priority queue for hold behavior messages
    std::priority_queue<std::pair<int, control::behavior>,
            std::vector<std::pair<int, control::behavior>>,
            decltype(&compare_priorities)> behavior_queue{compare_priorities};

    //Subscribers to behaviors, one callback for every behavior that is added
    ros::Subscriber sub_bh_wander;
    ros::Subscriber sub_bh_collision_avoid;
    ros::Subscriber sub_bh_collision_recover;
    
    //Publisher to cmd_vel to move the robot
    ros::Publisher pub_vel;

    //Behavior Callbacks
    void cb_bh_wander(const control::behavior::ConstPtr& msg);
    void cb_bh_collision_avoid(const control::behavior::ConstPtr& msg);
    void cb_bh_collision_recover(const control::behavior::ConstPtr& msg);

    //Robot movement
    void move_robot(control::behavior& msg);
    void stop_robot();
};

#endif
