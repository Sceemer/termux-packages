TERMUX_PKG_HOMEPAGE=https://wiki.debian.org/Debootstrap
TERMUX_PKG_DESCRIPTION="Bootstrap a basic Debian system"
TERMUX_PKG_VERSION=1.0.97
TERMUX_PKG_SHA256=d3e6bef403dbabade11d098214030d5063c6b238d3751b159f727af7556c5cf0
TERMUX_PKG_SRCURL=http://http.debian.net/debian/pool/main/d/debootstrap/debootstrap_${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_DEPENDS="wget, proot, perl"
TERMUX_PKG_MAINTAINER="Pierre Rudloff @Rudloff"
TERMUX_PKG_PLATFORM_INDEPENDENT=yes

termux_step_post_make_install() {
    mkdir -p ${TERMUX_PREFIX}/share/man/man8/
    install ${TERMUX_PKG_SRCDIR}/debootstrap.8 ${TERMUX_PREFIX}/share/man/man8/
}
