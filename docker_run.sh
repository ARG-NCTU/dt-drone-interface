docker run -it \
    --restart=unless-stopped \
    --detach \
    --name drone-interface \
    -e "VEHICLE_NAME=drone" \
    -e "ROBOT_TYPE=duckiedrone" \
    -e "VEHICLE_IP=192.168.50.161" \
    -e "ROS_MASTER_URI=http://192.168.50.161:11311" \
    -v "/dev:/dev" \
    --net=host \
    --privileged \
    argnctu/dt-drone-interface:daffy-arm64v8

#    -v "/home/$USER/robotx-2022:/code/catkin_ws/src" \
