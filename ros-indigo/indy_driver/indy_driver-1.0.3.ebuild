# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The indy_driver package"
HOMEPAGE="http://wiki.neuromeka.net/index.php?title=ROS_Indy"
SRC_URI="https://github.com/neuromeka-robotics/ros_indy-release/archive/release/indigo/${PN}/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/industrial_robot_client
	ros-indigo/message_runtime
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
