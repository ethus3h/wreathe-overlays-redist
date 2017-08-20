# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="library for computation automorphism group and canonical labelling of a graph"
HOMEPAGE="http://hackage.haskell.org/package/hgal"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/mtl-2*:=[profile?]
		>=dev-lang/ghc-6.12.3:="
DEPEND="${RDEPEND}
		dev-haskell/cabal"

src_prepare() {
	cabal_chdeps \
		'containers >= 0.4' 'containers >= 0.3' \
		'containers < 0.5' 'containers < 0.6' \
		'array < 0.4' 'array < 0.5'
}
