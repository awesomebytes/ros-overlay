# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS interface for the ROSflight autpilot stack"
HOMEPAGE="http://rosflight.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/lunar/${PN}/1.0.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosflight
	ros-lunar/rosflight_firmware
	ros-lunar/rosflight_msgs
	ros-lunar/rosflight_sim
	ros-lunar/rosflight_utils
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
