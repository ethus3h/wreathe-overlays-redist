# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Seaside"
MY_P="${MY_PN}-${PV}-final"
DESCRIPTION="A Smalltalk-based web development framework."
HOMEPAGE="http://www.pharo-project.org"
SRC_URI="http://www.seaside.st/distributions/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.4.7.2357
		>=dev-smalltalk/pharo-1.3-r3"
S="${WORKDIR}/${MY_PN}-${PV}"
SEASIDE_HOME="usr/lib/seaside/${PV}"
IMAGE_NAME="pier2"

src_compile() {
	einfo "Compressing .image and .changes files."
	gzip ${IMAGE_NAME}.image
	gzip ${IMAGE_NAME}.changes
}

src_install() {
	dodir ${SEASIDE_HOME}
	insinto ${SEASIDE_HOME}
	doins ${IMAGE_NAME}.image.gz
	doins ${IMAGE_NAME}.changes.gz
}

pkg_postinst() {
	einfo "To use a Seaside image copy all files in /${SEASIDE_HOME} to a directory
	of your liking, extract, and then execute: squeak pier2.image"
}
