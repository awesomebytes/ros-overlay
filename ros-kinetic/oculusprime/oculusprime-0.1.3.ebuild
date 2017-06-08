# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Oculus Prime ROS Interface"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xaxxontech/oculusprime_ros-release/archive/release/kinetic/oculusprime/0.1.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/amcl
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/dwa_local_planner
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/gmapping
    ros-kinetic/map_server
    ros-kinetic/move_base
    ros-kinetic/nodelet
    ros-kinetic/openni2_camera
    ros-kinetic/openni2_launch
    ros-kinetic/pcl_ros
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/std_msgs
    ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}