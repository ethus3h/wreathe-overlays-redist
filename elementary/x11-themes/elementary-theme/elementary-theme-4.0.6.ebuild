# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit base

DESCRIPTION="The official elementary GTK theme"
HOMEPAGE="https://launchpad.net/egtk"
SRC_URI="https://launchpad.net/egtk/4.x/${PV}/+download/elementary.tar.xz -> ${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+gtk +gtk3 +icons +wallpapers"

DEPEND="
	x11-themes/vanilla-dmz-aa-xcursors"
RDEPEND="${DEPEND}
	media-fonts/droid
	gtk? (
		x11-libs/gtk+:2
		x11-themes/gtk-engines-murrine
	)
	gtk3? (
		x11-libs/gtk+:3
		x11-themes/gtk-engines-unico
	)
	icons? (
		x11-themes/elementary-icon-theme
		x11-themes/hicolor-icon-theme
	)
	wallpapers? (
		x11-themes/elementary-wallpapers
	)"

RESTRICT="binchecks mirror strip"

S="${WORKDIR}/elementary"
DOCS=( AUTHORS CONTRIBUTORS COPYING )

src_prepare() {
	epatch "${FILESDIR}/${PN}-xfwm4.patch"
	epatch_user

	# Correct cursor theme name
	sed -i 's/DMZ-Black/Vanilla-DMZ-AA/' index.theme
}

src_install() {
	insinto /usr/share/themes/elementary
	doins -r index.theme metacity-1 gtk-2.0 gtk-3.0 xfwm4

	base_src_install_docs
}
