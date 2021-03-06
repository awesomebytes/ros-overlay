# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/realtime_support-release/archive/release/crystal/${PN}/0.6.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_cmake
	ros-crystal/rclcpp
	ros-crystal/rmw
	ros-crystal/std_msgs
	ros-crystal/tlsf
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/rmw_implementation_cmake )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
