# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Peter Vicman (peter.vicman@gmail.com)
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="apache-ant"
PKG_VERSION="1.10.14"
PKG_SHA256="a0456ecbf934b41dca74747413f2da7eafe40355fbdf5bfd38d8f3713dd828cd"
PKG_LICENSE="Apache License 2.0"
PKG_SITE="https://ant.apache.org/"
PKG_URL="https://archive.apache.org/dist/ant/binaries/${PKG_NAME}-${PKG_VERSION}-bin.tar.xz"
PKG_DEPENDS_UNPACK="jdk-${MACHINE_HARDWARE_NAME}-zulu"
PKG_LONGDESC="Apache Ant is a Java library and command-line tool that help building software."
PKG_TOOLCHAIN="manual"

makeinstall_host() {
  mkdir -p ${TOOLCHAIN}/apache-ant/bin
  mkdir -p ${TOOLCHAIN}/apache-ant/lib
    cp bin/ant ${TOOLCHAIN}/apache-ant/bin
    cp lib/*.jar ${TOOLCHAIN}/apache-ant/lib
  mkdir -p ${TOOLCHAIN}/bin
    ln -sf ${TOOLCHAIN}/apache-ant/bin/ant ${TOOLCHAIN}/bin/ant
}