#include "Behavior_Wander.h"


Behavior_Wander::Behavior_Wander(double prob_left, double prob_right, double prob_forward)
 : generator(std::random_device()()) {
    assert(prob_left + prob_right + prob_forward == 1.0);
    //this->nh = nh;
    this->prob_left = prob_left;
    this->prob_right = prob_right;
    this->prob_forward = prob_forward;
    this->pub_arbiter = this->nh.advertise<control::behavior>("behavior/wander", 1);
}

void Behavior_Wander::set_action_probabilities(double prob_left, double prob_right, double prob_forward) {
    assert(prob_left + prob_right + prob_forward == 1.0);
    this->prob_left = prob_left;
    this->prob_right = prob_right;
    this->prob_forward = prob_forward;
}

void Behavior_Wander::process_behavior() {
    ACTIONS action = this->get_random_action();
    control::behavior msg_move;
    msg_move.active = false;
    msg_move.vel_fw = 0;
    msg_move.vel_turn = 0;
    switch (action) {
        case TURN_LEFT:
            ROS_DEBUG("Performing Action: TURN_LEFT");
            msg_move.active = true;
            msg_move.vel_turn = WANDER_VELOCITY;
            msg_move.vel_fw = WANDER_VELOCITY;
            break;
        case TURN_RIGHT:
            ROS_DEBUG("Performing Action: TURN_RIGHT");
            msg_move.active = true;
            msg_move.vel_turn = -WANDER_VELOCITY;
            msg_move.vel_fw = WANDER_VELOCITY;
            break;
        case MOVE_FORWARD:
            ROS_DEBUG("Performing Action: MOVE_FORWARD");
            msg_move.active = true;
            msg_move.vel_fw = WANDER_VELOCITY;
            break;
        default:
            ROS_ERROR("Performing Action: Invalid Action!");
            break;
    }
    this->pub_arbiter.publish(msg_move);
}

double Behavior_Wander::get_random_number() {
    std::uniform_real_distribution<double>::param_type range {0, 1};
    return this->distribution(this->generator, range);
}

Behavior_Wander::ACTIONS Behavior_Wander::get_random_action() {
    double random_num = distribution(generator);
    if (random_num < this->prob_right) {
        ROS_DEBUG("Moving Right, Rand: %f\n", random_num);
        return TURN_RIGHT;
    }
    else if (random_num < this->prob_right + this->prob_left) {
        ROS_DEBUG("Moving LEFT, Rand: %f\n", random_num);
        return TURN_LEFT;
    }
    else if (random_num <= this->prob_right + this->prob_left + this->prob_forward) {
        ROS_DEBUG("Moving Forward, Rand: %f\n", random_num);
        return MOVE_FORWARD;
    }
    else {
        ROS_ERROR("Error: Invalid Random Action. Moving Forward. Rand: %f\n", random_num);
        return MOVE_FORWARD;
    }
}

//Main node function
int main(int argc, char **argv) {
    ros::init(argc, argv, "bh_wander");
    //ros::NodeHandle nh;
    ROS_INFO("Wander behavior node started...");

    Behavior_Wander behavior_wander;
    ros::Rate loop_rate(BH_WANDER_RATE);

    while(ros::ok()) {
        behavior_wander.process_behavior();
        ros::spinOnce();
        if (BH_WANDER_RATE != 0) {
            loop_rate.sleep();
        }
    }
    return 0;
}
