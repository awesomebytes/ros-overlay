# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the ROBOTIS MANIPULATOR-H \(metapackage\)"
HOMEPAGE="http://wiki.ros.org/manipulator_h"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/${PN}/0.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/manipulator_h_base_module
	ros-kinetic/manipulator_h_base_module_msgs
	ros-kinetic/manipulator_h_bringup
	ros-kinetic/manipulator_h_description
	ros-kinetic/manipulator_h_gazebo
	ros-kinetic/manipulator_h_gui
	ros-kinetic/manipulator_h_kinematics_dynamics
	ros-kinetic/manipulator_h_manager
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
