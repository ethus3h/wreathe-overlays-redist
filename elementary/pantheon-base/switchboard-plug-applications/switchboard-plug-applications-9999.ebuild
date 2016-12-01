# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

VALA_MIN_API_VERSION=0.22

inherit vala cmake-utils bzr

DESCRIPTION="Application configuration management"
HOMEPAGE="https://launchpad.net/switchboard-plug-applications"
EBZR_REPO_URI="lp:switchboard-plug-applications"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="nls"

RDEPEND="
	dev-libs/glib:2
	>=pantheon-base/switchboard-2
	x11-libs/granite
	x11-libs/gtk+:3"
DEPEND="${RDEPEND}
	$(vala_depend)
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

src_prepare() {
	use nls || sed -i '/add_subdirectory (po)/d' CMakeLists.txt

	cmake-utils_src_prepare
	vala_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DVALA_EXECUTABLE="${VALAC}"
	)
	cmake-utils_src_configure
}
