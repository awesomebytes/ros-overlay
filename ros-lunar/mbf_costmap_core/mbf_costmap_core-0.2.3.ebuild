# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides common interfaces for navigation specific robot actio[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex/mbf_costmap_core"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_2d
	ros-lunar/geometry_msgs
	ros-lunar/mbf_abstract_core
	ros-lunar/mbf_utility
	ros-lunar/nav_core
	ros-lunar/std_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
