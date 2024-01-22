#!/bin/bash

# Start roscore in a new Terminator tab
terminator -e "bash -c 'source /opt/ros/kinetic/setup.bash; roscore; exec bash'"

# Wait for 5 seconds to ensure roscore has started
sleep 5

# Start your package in another new Terminator tab
terminator -e "bash -c 'source /opt/ros/kinetic/setup.bash; roslaunch kuka_kr10_support test_kr10r900_2.launch; exec bash'"

