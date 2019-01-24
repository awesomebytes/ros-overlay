# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pilz_extensions package. Here are classes extending the functionality o[...]"
HOMEPAGE="https://wiki.ros.org/pilz_extensions"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/${PN}/0.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/prbt_support
	test? ( ros-kinetic/code_coverage )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/joint_limits_interface
	ros-kinetic/roscpp
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
