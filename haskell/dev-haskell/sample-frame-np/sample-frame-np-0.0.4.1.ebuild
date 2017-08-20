# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Orphan instances for types from sample-frame and numericprelude"
HOMEPAGE="http://www.haskell.org/haskellwiki/Synthesizer"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/numeric-prelude-0.2:=[profile?] <dev-haskell/numeric-prelude-0.5:=[profile?]
	>=dev-haskell/sample-frame-0.0.3:=[profile?] <dev-haskell/sample-frame-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
