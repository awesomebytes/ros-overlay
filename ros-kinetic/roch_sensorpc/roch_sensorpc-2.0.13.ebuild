# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Ult/psd/cliff to pointcloud:
    Publish Ult, cliff, and psd sensors events as points in a pointcloud, so navistack can use them
    for poor-man navigation. Implemented intended to run together with roch_base."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_sensorpc/2.0.13-2.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/roch_msgs
    ros-kinetic/nodelet
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/roch_msgs
    ros-kinetic/nodelet
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