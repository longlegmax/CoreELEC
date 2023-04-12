# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Team CoreELEC (https://coreelec.org)

PKG_NAME="ceemmc"
PKG_LICENSE="proprietary"
PKG_SITE="https://coreelec.org"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Tool to install CoreELEC on internal eMMC"
PKG_TOOLCHAIN="manual"
PKG_VERSION="3143cf2ab3dec9f47f822a3c5adbaf8640bc65da"
PKG_SHA256="493a809c95c3021c87597fb77ea9e9c39d174b5d5c4f81c40810ceebc71ce1ba"
PKG_SOURCE_NAME="${PKG_NAME}-${ARCH}-${PKG_VERSION}.tar.xz"
PKG_URL="https://sources.coreelec.org/${PKG_SOURCE_NAME}"

case "${DEVICE}" in
  Amlogic-ng)
    PKG_VERSION="e7be656a035a85da07fdfae4761e031120826943"
    PKG_SHA256="6c923ac1c022228533b0d19ebb58fc665c3a53a1924c5b5269d6b8795c025c57"
    ;;
  Amlogic-ne)
    PKG_VERSION="b494d2a5e8f5b83728005b39b87e6f0243236c9f"
    PKG_SHA256="0804967f3e0c742c4cb9d4f8e90b076663fe9ff0bb647ff273ac33158f532c3f"
    ;;
esac

PKG_SOURCE_NAME="${PKG_NAME}-${ARCH}-${PKG_VERSION}.tar.xz"
PKG_URL="https://sources.coreelec.org/${PKG_SOURCE_NAME}"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/sbin
    install -m 0755 ceemmc ${INSTALL}/usr/sbin/ceemmc
}
