

# FROM ros:foxy
FROM ros:melodic

RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
RUN mkdir -p /root/catkin_ws/src

# install ros package
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-realsense2-camera \
      ros-${ROS_DISTRO}-realsense2-description && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/catkin_ws/src
RUN git clone https://github.com/ros-drivers/rosserial.git

COPY ./hoverboard_ws/src /root/catkin_ws/src

WORKDIR /root/catkin_ws

# RUN colcon build
WORKDIR /root/catkin_ws
RUN /bin/bash -c '. /opt/ros/${ROS_DISTRO}/setup.bash; rosdep install --from-paths src --ignore-src; cd /root/catkin_ws; catkin_make'
RUN echo "source /root/catkin_ws/devel/setup.bash" >> ~/.bashrc