# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Squeak"
MY_P="${MY_PN}${PV}"
DESCRIPTION="An open-source Smalltalk environment."
HOMEPAGE="http://www.squeak.org"
SRC_URI="http://ftp.squeak.org/${PV}/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.10.2.2614
		=dev-smalltalk/squeak-sources-41"
SQUEAK_HOME="usr/share/${PN}"

src_compile() {
	einfo "Compressing image and changes files."
	gzip ${MY_P}/${MY_P}.image
	gzip ${MY_P}/${MY_P}.changes
}

src_install() {
	dodir ${SQUEAK_HOME}
	insinto ${SQUEAK_HOME}
	doins -r ${MY_P}/${MY_P}.image.gz
	doins -r ${MY_P}/${MY_P}.changes.gz
}
