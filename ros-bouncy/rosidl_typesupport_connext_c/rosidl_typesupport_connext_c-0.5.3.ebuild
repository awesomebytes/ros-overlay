# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the C interfaces for RTI Connext."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/bouncy/${PN}/0.5.3-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/rmw
	ros-bouncy/rosidl_parser
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/connext_cmake_module
	ros-bouncy/rosidl_cmake
	ros-bouncy/rosidl_generator_c
	ros-bouncy/rosidl_typesupport_connext_cpp
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
