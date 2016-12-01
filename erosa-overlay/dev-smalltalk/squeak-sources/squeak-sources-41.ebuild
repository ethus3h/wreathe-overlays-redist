# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Squeak"
MY_P="${MY_PN}${PV}"
SQUEAKVM_PV="4.10.2-2614"
DESCRIPTION="An open-source Smalltalk environment."
HOMEPAGE="http://www.squeak.org"
SRC_URI="http://ftp.squeak.org/sources_files/${MY_PN}V${PV}.sources.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.10.2.2614"
SQUEAKVM_HOME="usr/lib/squeak/${SQUEAKVM_PV}"

src_install() {
	dodir ${SQUEAKVM_HOME}
	insinto ${SQUEAKVM_HOME}
	doins ${MY_PN}V${PV}.sources
}
