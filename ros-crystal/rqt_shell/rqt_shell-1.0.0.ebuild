# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_shell is a Python GUI plugin providing an interactive shell."
HOMEPAGE="http://wiki.ros.org/rqt_shell"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/1.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/python_qt_binding
	ros-crystal/qt_gui
	ros-crystal/qt_gui_py_common
	ros-crystal/rqt_gui
	ros-crystal/rqt_gui_py
	dev-python/catkin_pkg
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
