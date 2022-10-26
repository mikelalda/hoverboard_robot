# FROM ros:foxy
FROM ros:melodic

RUN mkdir -p /root/catkin_ws/src

# install ros package
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-ros-control \
      ros-${ROS_DISTRO}-ros-controllers \
      ros-${ROS_DISTRO}-rosparam-shortcuts \
      ros-${ROS_DISTRO}-realsense2-camera \
      ros-${ROS_DISTRO}-realsense2-description && \
    rm -rf /var/lib/apt/lists/*

# copy robaka files
COPY ./hoverboard_ws/src /root/catkin_ws/src

WORKDIR /root/catkin_ws

# RUN colcon build
WORKDIR /root/catkin_ws
RUN /bin/bash -c 'source /opt/ros/${ROS_DISTRO}/setup.bash; rosdep install --from-paths src --ignore-src; cd /root/catkin_ws; catkin_make'

# use the one you connect to hoverboard
VOLUME [ "/dev/bus/usb/00" ]