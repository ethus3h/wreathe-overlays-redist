# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Pharo"
MY_P="${MY_PN}-${PV}-14557"
DESCRIPTION="An open-source Smalltalk environment based on Squeak."
HOMEPAGE="http://www.pharo-project.org"
# NOTE: To download this URI the gforge.iniria.fr SSL certificate may need to be
# installed.
SRC_URI="https://gforge.inria.fr/frs/download.php/31259/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.10.2.2614
		=dev-smalltalk/pharo-sources-10"
S="${WORKDIR}/${MY_PN}-${PV}"
PHARO_HOME="usr/share/${PN}"

src_compile() {
	einfo "Compressing image and changes files."
	gzip ${MY_PN}-${PV}.image
	gzip ${MY_PN}-${PV}.changes
}

src_install() {
	dodir ${PHARO_HOME}
	insinto ${PHARO_HOME}
	doins ${MY_PN}-${PV}.image.gz
	doins ${MY_PN}-${PV}.changes.gz
}

pkg_postinst() {
	einfo "To use a Pharo image copy all files in /${PHARO_HOME} to a directory
	of your liking, extract, and then execute: squeak Pharo-${PV}.image"
}
