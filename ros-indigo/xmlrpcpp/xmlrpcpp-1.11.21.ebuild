# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="XmlRpc is a C implementation of the XMLRPC protocol This version is	he"
HOMEPAGE="http://xmlrpcpp.sourceforge.net"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/xmlrpcpp/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cpp_common
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

