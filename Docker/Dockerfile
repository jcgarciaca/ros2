FROM ros:foxy

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y \
      ros-${ROS_DISTRO}-demo-nodes-cpp \
      ros-${ROS_DISTRO}-demo-nodes-py && \
      rm -rf /var/lib/apt/lists/*
      
RUN apt update 
RUN apt install -y ros-${ROS_DISTRO}-turtlesim
