# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The SBG ROS Driver package"
HOMEPAGE="http://wiki.ros.org/sbg_driver"
SRC_URI="https://github.com/ENSTABretagneRobotics/sbg_ros_driver-release/archive/release/lunar/${PN}/1.1.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
