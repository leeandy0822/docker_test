FROM osrf/ros:melodic-desktop-bionic

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    python3-opencv ca-certificates python3-dev git wget sudo jupyter ffmpeg python3-empy vim \
    cmake ninja-build protobuf-compiler libprotobuf-dev python3-pip python-pip

## create a non-root user
ARG USER_ID=1000
RUN useradd -m --no-log-init --system  --uid ${USER_ID} ncrl -g sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ncrl
WORKDIR /home/ncrl

ENV PATH="/home/ncrl/.local/bin:${PATH}"
RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py --user && \
    rm get-pip.py

## PIP3 Install
RUN pip3 install gdown rospkg catkin_pkg 


## Set a fixed model cache directory.
# ENV FVCORE_CACHE="/tmp"

## install packages
RUN sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'
RUN sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

RUN sudo apt-get -o Acquire::ForceIPv4=true update && sudo apt-get -o Acquire::ForceIPv4=true install -q -y \
    net-tools \
    ros-melodic-desktop \
    ros-melodic-perception \
    ros-melodic-rgbd-launch \
    ros-melodic-desktop-full \
    ros-melodic-joystick-drivers \
    ros-melodic-pointcloud-to-laserscan \
    ros-melodic-robot-localization \
    ros-melodic-cartographer-ros \
    ros-melodic-cartographer-rviz \
    ros-melodic-spacenav-node \
    ros-melodic-tf2-sensor-msgs \
    ros-melodic-geodesy \
    ros-melodic-serial \
    ros-melodic-controller-manager \
    ros-melodic-openslam-gmapping \
    ros-melodic-twist-mux \
    ros-melodic-velodyne-simulator \
    ros-melodic-gazebo-ros \
    ros-melodic-lms1xx \
    ros-melodic-rviz-imu-plugin \
    ros-melodic-interactive-marker-twist-server \
    ros-melodic-teleop-twist-joy \
    ros-melodic-ddynamic-reconfigure \
    ros-melodic-rosserial-arduino \
    ros-melodic-rosserial \
    ros-melodic-joy \
    ros-melodic-octomap-ros \
    ros-melodic-mavlink \
    python-wstool \
    ros-melodic-control-toolbox \
    python-catkin-tools \
    protobuf-compiler \
    libgoogle-glog-dev \
    python-cvxopt \
    ros-melodic-ompl \
    ros-melodic-mavros \
    ros-melodic-mavros-extras \ 
    ros-melodic-mavros-msgs \
    libompl-dev 


ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics



RUN git clone https://github.com/leeandy0822/ncrl_robotics.git


WORKDIR  /opt/ros/melodic/lib/mavros 
RUN sudo ./install_geographiclib_datasets.sh 

WORKDIR /home/ncrl/ncrl_robotics
