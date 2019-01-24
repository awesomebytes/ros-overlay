# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Rosbridge provides a JSON API to ROS functionality for non-ROS programs.\
 [...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_suite"
SRC_URI="https://github.com/RobotWebTools-release/${PN}-release/archive/release/kinetic/${PN}/0.10.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosapi
	ros-kinetic/rosbridge_library
	ros-kinetic/rosbridge_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
