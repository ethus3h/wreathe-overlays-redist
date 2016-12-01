# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19 ruby20 ruby21 ruby22"

inherit ruby-single

DESCRIPTION="Seriously Instant Screen-Grabbing"
HOMEPAGE="http://gyazo.com"
SRC_URI="https://github.com/gyazo/Gyazo-for-Linux/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/Gyazo-for-Linux-${PV}"

LICENSE="LGPL-3.0"
SLOT="0"
KEYWORDS="~*"
IUSE="+xclip"

DEPEND="media-gfx/imagemagick
		xclip? ( x11-misc/xclip )"
RDEPEND="${DEPEND}"

src_install(){
	exeinto /usr/bin
	newexe src/${PN}.rb ${PN}
	insinto /usr/share/applications
	doins src/${PN}.desktop
	insinto /usr/share/pixmaps
	doins icons/${PN}.png
}

pkg_postinst(){
	elog "Usage: Just launch the Gyazo app, and then, drag your mouse to grab the screen."
}
