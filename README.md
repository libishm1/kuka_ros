# kuka_ros
docker containerisation of kuka_experimenal repository

docker build -t my_moveit_image .

sudo docker run -it --name my_moveit_image my_moveit_image

sudo docker run -it --name my_moveit_container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix my_moveit_image


references - 

docker 
https://medium.com/@sepideh.92sh/how-docker-revolutionizes-application-development-a-comprehensive-guide-for-beginners-fc2d3e53eb31
https://medium.com/@gauravkamble9112/installing-python-libraries-inside-docker-with-pip3-d5348afb7a80
https://docs.docker.com/get-started/02_our_app/

openai chats
https://www.phind.com/search?cache=z2ve73rqlz9yqfai422kbgfq

kinetic tutorials
http://docs.ros.org/en/kinetic/api/moveit_tutorials/html/index.html
