# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="SVG backend for diagrams drawing EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	dev-haskell/colour:=[profile?]
	>=dev-haskell/diagrams-core-1.3:=[profile?] <dev-haskell/diagrams-core-1.4:=[profile?]
	>=dev-haskell/diagrams-lib-1.3:=[profile?] <dev-haskell/diagrams-lib-1.4:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/juicypixels-3.1.5:=[profile?] <dev-haskell/juicypixels-3.3:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/lucid-svg-0.5:=[profile?]
	>=dev-haskell/monoid-extras-0.3:=[profile?] <dev-haskell/monoid-extras-0.5:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/optparse-applicative-0.10:=[profile?] <dev-haskell/optparse-applicative-0.13:=[profile?]
	>=dev-haskell/semigroups-0.13:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/split-0.1.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	default

	cabal_chdeps \
		'base                 >= 4.3   && < 4.9' 'base                 >= 4.3' \
		'lens                 >= 4.0   && < 4.14' 'lens                 >= 4.0' \
		'lucid-svg            >= 0.5   && < 0.7' 'lucid-svg            >= 0.5'
}
