# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/libiscsi/libiscsi-1.9.0-r1.ebuild,v 1.3 2013/06/25 12:58:51 ago Exp $

EAPI=5

AUTOTOOLS_AUTORECONF="1"
inherit eutils autotools-utils

if [[ ${PV} = *9999* ]]; then
	inherit git-2
	SRC_URI=""
	EGIT_REPO_URI="git://github.com/sahlberg/libiscsi.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/sahlberg/libiscsi/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="iscsi client library and utilities"
HOMEPAGE="https://github.com/sahlberg/libiscsi"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="usr/bin/ld_iscsi.so"

myeconfargs=( "--disable-werror" )

src_prepare() {
	epatch "${FILESDIR}"/${P}-fix-makefile-include.patch

	epatch_user

	autotools-utils_src_prepare
}

src_compile() {
	cp "${S}/lib/libiscsi.syms" "${BUILD_DIR}/lib"

	autotools-utils_src_compile
}
