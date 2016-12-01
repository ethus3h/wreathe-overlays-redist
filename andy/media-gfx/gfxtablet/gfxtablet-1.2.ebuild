# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit linux-info

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI="git://github.com/rfc2822/GfxTablet.git"
	inherit git-2
	SRC_URI=""
else
	SRC_URI="https://github.com/rfc2822/GfxTablet/archive/android-app-${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S=${WORKDIR}/"GfxTablet-android-app-${PV}"
fi

DESCRIPTION="GfxTablet shall make it possible to use your Android device (especially tablets) like a graphics tablet."
HOMEPAGE="http://rfc2822.github.io/GfxTablet"

EGIT_REPO_URI="git://github.com/rfc2822/GfxTablet.git"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"


CONFIG_CHECK="~INPUT_UINPUT"

src_compile() {
	cd driver-uinput && emake || die "emake failed"
}

src_install() {
	dobin driver-uinput/networktablet
}

pkg_postinst() {
    einfo "You need to run networktablet as root or"
    einfo "change the the permissions of /dev/uinput."
}

