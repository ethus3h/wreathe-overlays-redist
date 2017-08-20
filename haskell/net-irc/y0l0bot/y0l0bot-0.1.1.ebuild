# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

DESCRIPTION="#plaimi's all-encompassing bot"
HOMEPAGE="http://hackage.haskell.org/package/y0l0bot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/mtl-2.2 <dev-haskell/mtl-2.3
	>=dev-haskell/network-2.6 <dev-haskell/network-2.7
	>=dev-haskell/old-locale-1.0 <dev-haskell/old-locale-1.1
	>=dev-haskell/old-time-1.1 <dev-haskell/old-time-1.2
	>=dev-haskell/safe-0.3 <dev-haskell/safe-0.4
	>=dev-haskell/split-0.2 <dev-haskell/split-0.3
	>=dev-haskell/text-1.2 <dev-haskell/text-1.3
	dev-haskell/time-locale-compat
	>=dev-lang/ghc-7.8.2
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}
