# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Pharo"
DESCRIPTION="The Squeak and Pharo smalltalk sources file."
HOMEPAGE="http://www.pharo-project.org"
SRC_URI="http://files.pharo.org/sources/PharoV${PV}.sources.zip"
LICENSE="MIT"
SLOT="2"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/pharovm-bin-99-r1"
RESTRICT=mirror 
PHAROVM_HOME="/usr/lib/pharo"

src_install() {
	dodir ${PHAROVM_HOME}
	insinto ${PHAROVM_HOME}
	doins ${MY_PN}V${PV}.sources  
}
