# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library."
HOMEPAGE="http://wiki.ros.org/visp_hand2eye_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_hand2eye_calibration/0.10.0-0.tar.gz"

LICENSE="GPLv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/visp_bridge
    ros-kinetic/image_proc
    ros-kinetic/visp
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
"
DEPEND="
    ros-kinetic/visp_bridge
    ros-kinetic/image_proc
    ros-kinetic/visp
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
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