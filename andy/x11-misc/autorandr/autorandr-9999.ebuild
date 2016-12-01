# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 bash-completion-r1 udev

DESCRIPTION="Auto-detect the connect display hardware and load the appropiate X11 setup using xrandr or disper"
HOMEPAGE="https://github.com/phillipberndt/autorandr"
SRC_URI=""
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE="udev +pm-utils"

DEPEND="udev? ( virtual/udev )
		pm-utils? ( sys-power/pm-utils )"
RDEPEND="${DEPEND}"

src_install() {
	exeinto /usr/bin
	doexe autorandr
	dodoc README.md

	newbashcomp bash_completion/${PN} ${PN}

	if use udev; then
		udev_dorules udev/40-monitor-hotplug.rules
	fi

	if use pm-utils; then
		exeinto /usr/lib/pm-utils/sleep.d
		doexe pm-utils/40autorandr
	fi
}

pkg_postinst() {
	udev_reload
}

