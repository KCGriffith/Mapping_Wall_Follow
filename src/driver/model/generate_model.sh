echo ---
echo Generating URDF...
rosrun xacro xacro.py -o ../iRobot/iRobot.urdf iRobot.urdf.xacro 
echo Generating SDF...
gzsdf print ../iRobot/iRobot.urdf > ../iRobot/iRobot.sdf
#gz sdf -p ../iRobot/iRobot.urdf > ../iRobot/iRobot.sdf
echo ---
