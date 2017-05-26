# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)"
HOMEPAGE="http://wiki.ros.org/mrpt_reactivenav2d"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_reactivenav2d/0.1.18-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/mrpt_bridge
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/mrpt_bridge
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/actionlib
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}