# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Cuis"
MY_P="${MY_PN}${PV}-1024"
SQUEAKVM_PV="4.4.7-2357"
DESCRIPTION="A simple open-source Smalltalk environment based on Squeak."
HOMEPAGE="http://www.jvuletich.org/Cuis/Index.html"
SRC_URI="http://www.jvuletich.org/${MY_PN}/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.4.7.2357"
CUIS_HOME="usr/share/${PN}"
SQUEAKVM_HOME="usr/lib/squeak/${SQUEAKVM_PV}"

src_compile() {
	einfo "Compressing image and changes files."
	gzip ${MY_PN}${PV}.image
	gzip ${MY_PN}${PV}.changes
}

src_install() {
	dodir ${CUIS_HOME}
	insinto ${CUIS_HOME}
	doins Licensing.txt 
	doins ${MY_PN}V3.sources
	doins ${MY_PN}${PV}ReleaseNotes.txt
	doins ${MY_PN}${PV}.image.gz
	doins ${MY_PN}${PV}.changes.gz
	dosym /${CUIS_HOME}/${MY_PN}V3.sources /${SQUEAKVM_HOME}/${MY_PN}V3.sources 
}
