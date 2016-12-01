# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="icat (Image cat) outputs images in 256-color capable terminals."
HOMEPAGE="https://github.com/atextor/icat"
SRC_URI="https://github.com/atextor/icat/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=media-libs/imlib2-1.4.4"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-flags.patch
}

src_install() {
	dobin ${PN} || die "Install failed"
	dodoc "AUTHORS" "CHANGELOG" "README.md" || die
}
