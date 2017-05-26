# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport."
HOMEPAGE="http://ros.org/wiki/hector_compressed_map_transport"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_compressed_map_transport/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hector_map_tools
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/geometry_msgs
    dev-cpp/eigen
"
DEPEND="
    ros-kinetic/hector_map_tools
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/geometry_msgs
    dev-cpp/eigen
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