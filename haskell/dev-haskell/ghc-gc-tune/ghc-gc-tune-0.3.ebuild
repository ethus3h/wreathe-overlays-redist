# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Graph performance of Haskell programs with different GC flags"
HOMEPAGE="http://code.haskell.org/~dons/code/ghc-gc-tune"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-haskell/cabal-1.6
		>=dev-lang/ghc-6.10.4"

RDEPEND="sci-visualization/gnuplot"