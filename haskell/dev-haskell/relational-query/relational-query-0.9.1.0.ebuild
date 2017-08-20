# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Typeful, Modular, Relational, algebraic query engine"
HOMEPAGE="http://khibino.github.io/haskell-relational-record/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/dlist:=[profile?]
	dev-haskell/names-th:=[profile?]
	>=dev-haskell/persistable-record-0.5:=[profile?]
	>=dev-haskell/sql-words-0.1.4:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-reify-compat:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck-simple )
"
