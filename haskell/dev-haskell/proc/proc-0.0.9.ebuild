# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Parse process information for Linux"
HOMEPAGE="http://hackage.haskell.org/package/proc"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/regex-tdfa-1.1.4:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?]
	>=dev-haskell/xformat-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.0.9-ghc-7.10.patch
}
