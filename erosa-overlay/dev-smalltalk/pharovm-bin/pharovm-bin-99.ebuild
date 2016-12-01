# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $ 

inherit base eutils

PHARO_HOME="/usr/lib/pharo"
DESCRIPTION="Pharo Smalltalk unix virtual machine"
HOMEPAGE="http://www.pharo-project.org"
SRC_URI="http://files.pharo.org/vm/pharo/linux/${PV}.zip"
LICENSE="Apple"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="x11-libs/libX11 x11-libs/libXext x11-libs/libXt"
RDEPEND="${DEPEND}"

src_install() {
	dodir ${PHARO_HOME} 
	insinto ${PHARO_HOME}
	doins *
	dosym ${PHARO_HOME}/pharo usr/bin/pharo
	chmod +x ${D}/${PHARO_HOME}/pharo
}
