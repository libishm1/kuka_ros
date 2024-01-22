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

# Install terminator, python3-pip, and the listed ROS packages
RUN apt-get update && apt-get install -y --allow-unauthenticated terminator python3-pip \
    ros-kinetic-catkin \
    ros-kinetic-industrial-robot-client \
    ros-kinetic-joint-state-publisher \
    ros-kinetic-robot-state-publisher \
    ros-kinetic-rviz \
    ros-kinetic-xacro

# Install terminator
RUN apt-get update && apt-get install -y terminator

# Build the workspace
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd ~/catkin_ws; catkin_make'

# Set the default command to run when the container starts
CMD ["/bin/bash", "-c", ". /opt/ros/kinetic/setup.bash; roslaunch kuka_kr10_support test_kr10r900_2.launch"]

CMD ["/bin/bash", "/home/libish/Desktop/Coderepos/kuka/launch.sh"]


# Define a volume for persistent data storage
VOLUME /home/libish/Desktop/Coderepos/kuka
