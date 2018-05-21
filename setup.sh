#!/bin/bash

#cd ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo
cp worldGazebo/cv1.world ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/worlds/
cp launch/turtlebot3_cv1.launch ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch/
mkdir ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models/turtlebot3_cv1
cp -r modelCv1/model.config ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models/turtlebot3_cv1
cp -r modelCv1/model.sdf ~/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models/turtlebot3_cv1

echo "Select model..."
export TURTLEBOT3_MODEL=waffle
echo "Model selected"
echo "MODEL: TURTLEBOT3_MODEL --> waffle"
echo "Creating world... launch turtlebot with world"
roslaunch turtlebot3_gazebo turtlebot3_cv1.launch
