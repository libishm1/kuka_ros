# kuka_ros
docker containerisation of kuka_experimenal repository

cd to docker file location 
Build the docker image  
  docker build -t my_moveit_image .
disable display restrictions 
  xhost +
run the docker image 
  sudo docker run -it --name my_moveit_container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix my_moveit_image

inside docker container,
source the workspace
 . ~/catkin_ws/devel/setup.bash
 
launch the test files
 roslaunch kuka_kr10_support test_kr10r900_2.launch 


references - 

docker 
https://medium.com/@sepideh.92sh/how-docker-revolutionizes-application-development-a-comprehensive-guide-for-beginners-fc2d3e53eb31
https://medium.com/@gauravkamble9112/installing-python-libraries-inside-docker-with-pip3-d5348afb7a80
https://docs.docker.com/get-started/02_our_app/

openai chats
https://www.phind.com/search?cache=z2ve73rqlz9yqfai422kbgfq

kinetic tutorials
http://docs.ros.org/en/kinetic/api/moveit_tutorials/html/index.html

openshowvar communication client
https://github.com/AytacKahveci/KukaRosOpenCommunication/tree/master

kukavarproxy server
https://github.com/ImtsSrl/KUKAVARPROXY

