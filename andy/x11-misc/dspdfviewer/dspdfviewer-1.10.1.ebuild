# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Dual-Screen PDF Viewer for latex-beamer"
HOMEPAGE="https://github.com/dannyedel/dspdfviewer"
SRC_URI="https://github.com/dannyedel/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=dev-qt/qtcore-4.5.0:4
	>=dev-libs/boost-1.52.0-r6
	app-text/poppler[qt4]"
RDEPEND="${DEPEND}"
