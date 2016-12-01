# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils qmake-utils

DESCRIPTION="QML port of qtermwidget"
HOMEPAGE="https://github.com/Swordfish90/qmltermwidget"
if [[ ${PV} == *9999* ]];then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}"
	KEYWORDS=""
else
	KEYWORDS="~x86 ~amd64"
	SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
fi

LICENSE="LGPL-3.0"
SLOT="0"
IUSE=""

DEPEND="
	>=dev-qt/qtdeclarative-5.2.0:5[localstorage]
"
RDEPEND="${DEPEND}"

src_configure(){
	eqmake5 ${PN}.pro
}

src_compile(){
	emake INSTALL_ROOT="${D}" || die "Failed compilation"
}

src_install(){
	emake INSTALL_ROOT="${D}" install || die "Failed installation"
}
