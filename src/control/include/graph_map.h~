#ifndef GRAPH_MAP_H
#define GRAPH_MAP_H
#include "ros/ros.h"
#include <vector>
#include <string>


#define LEFT 0.25f
#define RIGHT -0.25f

/*
*The way I have this data structure set up.  We will need a definite point at which we know that one of the ballistic servo
*behaviors have taken priority.  
*/

class graph_map{
	std::vector<double> sideLengths;
	std::map<float, std::string> dir; //Used collect info on which direction robot is turning.
	dir[LEFT] = "Left";
	dir[RIGHT] = "Right";
	std::vector<std::string> takenDir; //Used to record the direction the robot turns every time it measures a new wall.
public:
	graph_map();

	float turnDir(float k) //Will return the value it recieves but stores the data in takenDir for graphing purposes.
	{
		takenDir.insert(dir[k]);
		return k;
	}
	void getLength(double time, double speed) 
/*speed should be constant and defined in the behavior
*This function handles the scanning portion that I metioned in my email.
*This function should be called every time the behavior deems it necessary for the robot to turn
*/
	{
		sideLengths.insert(time*speed);
	}

	void printResults()
/*The way I have this function set up it needs to be implemented after the robot has determined which way it wants to turn.*/
	{
		if(!takenDir.empty())
			ROS_INFO_STREAM(takenDir.end << "(" << sideLengths.end << ")");
		else ROS_INFO_STREAM("(" << sideLengths.end << ")");
	}
}
#endif
