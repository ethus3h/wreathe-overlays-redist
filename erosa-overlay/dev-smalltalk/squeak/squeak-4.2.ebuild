# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Squeak"
MY_P="${MY_PN}${PV}-10966"
SQUEAKVM_PV="4.4.7-2357"
DESCRIPTION="An open-source Smalltalk environment."
HOMEPAGE="http://www.squeak.org"
SRC_URI="http://ftp.squeak.org/${PV}/${MY_P}.zip
http://ftp.squeak.org/${PV}/${MY_PN}V41.sources.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.4.7.2357"
SQUEAK_HOME="usr/lib/${PN}/image/${PV}"
SQUEAKVM_HOME="usr/lib/squeak/${SQUEAKVM_PV}"

src_compile() {
	einfo "Compressing image/changes files."
	gzip ${MY_P}.image
	gzip ${MY_P}.changes
}

src_install() {
	dodir ${SQUEAK_HOME}
	insinto ${SQUEAK_HOME}
	doins -r ${MY_P}.image.gz
	doins -r ${MY_P}.changes.gz
	insinto ${SQUEAKVM_HOME}
	doins -r ${MY_PN}V41.sources
}
