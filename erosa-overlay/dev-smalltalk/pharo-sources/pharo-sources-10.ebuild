# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

MY_PN="Pharo"
MY_PV="1.4"
MY_P="${MY_PN}-${MY_PV}-14557"
SQUEAKVM_PV="4.10.2-2614"
DESCRIPTION="The Squeak and Pharo smalltalk sources file."
HOMEPAGE="http://www.pharo-project.org"
# NOTE: To download this URI the gforge.iniria.fr SSL certificate may need to be
# installed.
SRC_URI="https://gforge.inria.fr/frs/download.php/31259/${MY_P}.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
RDEPEND="${DEPEND} 
		>=dev-smalltalk/squeakvm-4.10.2.2614"
S="${WORKDIR}/${MY_PN}-${MY_PV}"
SQUEAKVM_HOME="usr/lib/squeak/${SQUEAKVM_PV}"

src_install() {
	dodir ${SQUEAKVM_HOME}
	insinto ${SQUEAKVM_HOME}
	doins ${MY_PN}V${PV}.sources  
}
