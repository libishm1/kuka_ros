# Use the moveit/moveit:kinetic-source image as the base image
FROM moveit/moveit:kinetic-source

# Set the working directory in the container
WORKDIR /root/catkin_ws

# Clone the Kuka Experimental repository
RUN git clone https://github.com/ros-industrial/kuka_experimental.git src/kuka_experimental

# Install the controller_manager package
RUN apt-get update && apt-get install -y --allow-unauthenticated ros-kinetic-controller-manager

# Install the joint_limits_interface package
RUN apt-get update && apt-get install -y --allow-unauthenticated ros-kinetic-joint-limits-interface

# Install the realtime_tools package
RUN apt-get update && apt-get install -y --allow-unauthenticated ros-kinetic-realtime-tools

# Build the workspace
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd ~/catkin_ws; catkin_make'
