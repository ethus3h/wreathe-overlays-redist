# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Pharo"
MY_P="${MY_PN}-${PV}-12353"
DESCRIPTION="An open-source Smalltalk environment based on Squeak."
HOMEPAGE="http://www.pharo-project.org"
SRC_URI="https://gforge.inria.fr/frs/download.php/28554/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.4.7.2357"
S="${WORKDIR}/${MY_P}"
PHARO_HOME="usr/lib/pharo/${PV}"

src_compile() {
	einfo "Compressing image/changes files."
	gzip ${MY_P}.image
	gzip ${MY_P}.changes
}

src_install() {
	dodir ${PHARO_HOME}
	insinto ${PHARO_HOME}
	doins -r *
}

pkg_postinst() {
	einfo "To use a Pharo image copy all files in /${PHARO_HOME} to a directory
	of your liking. Then execute: squeak Pharo-{$PV}.image"
}
