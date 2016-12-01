# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Pharo"
MY_P="${MY_PN}-${PV}-13307"
DESCRIPTION="An open-source Smalltalk environment based on Squeak."
HOMEPAGE="http://www.pharo-project.org"
# NOTE: To download this URI the gforge.iniria.fr SSL certificate may need to be
# installed.
SRC_URI="https://gforge.inria.fr/frs/download.php/29053/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.4.7.2357"
S="${WORKDIR}/${MY_PN}-${PV}"
PHARO_HOME="usr/lib/pharo/${PV}"

src_compile() {
	einfo "Compressing image/changes files."
	gzip ${MY_PN}-${PV}.image
	gzip ${MY_PN}-${PV}.changes
}

src_install() {
	dodir ${PHARO_HOME}
	insinto ${PHARO_HOME}
	doins -r *
}

pkg_postinst() {
	einfo "To use a Pharo image copy all files in /${PHARO_HOME} to a directory
	of your liking, extract, and then execute: squeak Pharo-${PV}.image"
}
