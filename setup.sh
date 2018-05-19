#!/bin/bash

cd ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazeboturtlebot3_gazebo
cp worldGazebo/cv1.world ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/worlds/.
cp launch/turtlebot3_cv1.launch ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/.
#cp -r ca_vignal_2 ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models/.

echo "Select model..."
export TURTLEBOT3_MODEL=waffle
echo "Model selected"
echo "MODEL: TURTLEBOT3_MODEL --> waffle"
echo "Creating world... launch turtlebot with world"
roslaunch turtlebot3_gazebo turtlebot3_cv1.launch
