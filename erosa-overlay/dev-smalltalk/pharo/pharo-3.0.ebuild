# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"
inherit eutils

MY_PN="Pharo"
MY_PV="30"
MY_PV2="3.0"
MY_RELEASE="30862"
DESCRIPTION="An open-source Smalltalk environment based on Squeak."
HOMEPAGE="http://www.pharo-project.org"
SRC_URI="http://files.pharo.org/image/${MY_PV}/${MY_PN}-Image-${MY_PV2}-latest.zip"
LICENSE="MIT"
SLOT="2"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/pharovm-bin-99-r1
		=dev-smalltalk/pharo-sources-30:2"
RESTRICT=mirror
PHARO_HOME="usr/share/${PN}"

src_compile() {
	einfo "Renaming image and changes files."
	mv ${MY_PN}-${MY_RELEASE}.image ${MY_PN}-${PV}.image
	mv ${MY_PN}-${MY_RELEASE}.changes ${MY_PN}-${PV}.changes

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
	einfo "To use a Pharo image, copy the files /${PHARO_HOME}/${MY_PN}-${PV}.image.gz and /${PHARO_HOME}/${MY_PN}-${PV}.changes.gz to a directory
	of your liking, extract both files, and then execute: pharo ${MY_PN}-${PV}.image"
}
