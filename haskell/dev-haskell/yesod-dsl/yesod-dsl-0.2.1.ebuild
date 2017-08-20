# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="DSL for generating Yesod subsite to manage an RDBMS;"
HOMEPAGE="http://hackage.haskell.org/package/yesod-dsl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/hscolour:=[profile?]
	>=dev-haskell/missingh-1.2.0.0:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	dev-haskell/strict:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/uniplate:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.18.1.3
	dev-haskell/happy
"
