# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="SVG file loader and serializer"
HOMEPAGE="http://hackage.haskell.org/package/svg-tree"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.12:=[profile?]
	>=dev-haskell/juicypixels-3.2:=[profile?]
	>=dev-haskell/lens-4.6:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/linear-1.20:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?]
	>=dev-haskell/text-1.1:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
