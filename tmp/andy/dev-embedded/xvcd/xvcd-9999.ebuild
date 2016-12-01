# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 eutils

DESCRIPTION="xvcd - The Xilinx Virtual Cable Daemon"
HOMEPAGE="https://github.com/tmbinc/xvcd"
EGIT_REPO_URI="git://github.com/tmbinc/xvcd.git"
if use ftdi; then
	EGIT_BRANCH="ftdi"
fi

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE="ftdi"

DEPEND="ftdi? ( dev-embedded/libftdi )"
RDEPEND="${DEPEND}"

src_prepare() {
	if use ftdi; then
		epatch "${FILESDIR}/xvcd-remove-ftdi-async-mode.patch"
	fi
}


src_compile() {
	cd "src/"
	emake || die "emake failed"
}

src_install() {
	dobin src/${PN}
	dodoc README
}
