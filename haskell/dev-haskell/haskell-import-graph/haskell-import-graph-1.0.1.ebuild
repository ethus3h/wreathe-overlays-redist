# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="create haskell import graph for graphviz"
HOMEPAGE="http://hackage.haskell.org/package/haskell-import-graph"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/classy-prelude-0.12:=[profile?]
	>=dev-haskell/graphviz-2999:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-lang/ghc-7.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
