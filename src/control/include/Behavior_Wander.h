#ifndef CLASS_HOMEWORK_WANDER_H_H
#define CLASS_HOMEWORK_WANDER_H_H

#define BH_WANDER_RATE 10

#include "ros/ros.h"
#include "control/behavior.h"
#include <random>
#include <cassert>

class Behavior_Wander {

    static constexpr double PROB_LEFT_DEFAULT = 0.25f;
    static constexpr double PROB_RIGHT_DEFAULT = 0.25f;
    static constexpr double PROB_FORWARD_DEFAULT = 0.5f;
    static constexpr double WANDER_VELOCITY = 0.15f;

public:
    enum ACTIONS {TURN_LEFT, TURN_RIGHT, MOVE_FORWARD};
    Behavior_Wander(double prob_left = PROB_LEFT_DEFAULT,
                    double prob_right = PROB_RIGHT_DEFAULT,
                    double prob_forward = PROB_FORWARD_DEFAULT);
    void set_action_probabilities(double prob_left,
                                  double prob_right,
                                  double prob_forward);
    void process_behavior();

private:
    ros::NodeHandle nh;

    //publishing to send velocity messages to the arbiter
    ros::Publisher pub_arbiter;

    //random number variables
    std::mt19937 generator;
    std::uniform_real_distribution<double> distribution;
    double get_random_number();

    //choosing actions
    ACTIONS get_random_action();
    double prob_left, prob_right, prob_forward;

};

#endif
