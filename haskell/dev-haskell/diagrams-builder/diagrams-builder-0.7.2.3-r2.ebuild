# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="hint-based build service for the diagrams graphics EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cairo postscript ps rasterific svg"

RDEPEND=">=dev-haskell/base-orphans-0.3:=[profile?] <dev-haskell/base-orphans-0.6:=[profile?]
	>=dev-haskell/cmdargs-0.6:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/diagrams-lib-1.3:=[profile?] <dev-haskell/diagrams-lib-1.4:=[profile?]
	>=dev-haskell/exceptions-0.3:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16:=[profile?] <dev-haskell/haskell-src-exts-1.18:=[profile?]
	>=dev-haskell/hint-0.4:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	cairo? ( >=dev-haskell/diagrams-cairo-1.3:=[profile?] <dev-haskell/diagrams-cairo-1.4:=[profile?] )
	postscript? ( >=dev-haskell/diagrams-postscript-0.6:=[profile?] <dev-haskell/diagrams-postscript-1.4:=[profile?] )
	ps? ( >=dev-haskell/diagrams-postscript-0.6:=[profile?] <dev-haskell/diagrams-postscript-1.4:=[profile?] )
	rasterific? ( >=dev-haskell/diagrams-rasterific-1.3:=[profile?] <dev-haskell/diagrams-rasterific-1.4:=[profile?]
			>=dev-haskell/juicypixels-3.1.5:=[profile?] <dev-haskell/juicypixels-3.3:=[profile?] )
	svg? ( >=dev-haskell/diagrams-svg-0.8.0.1:=[profile?] <dev-haskell/diagrams-svg-1.4:=[profile?]
		dev-haskell/lucid-svg:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	cabal_chdeps \
		'base >=4.2 && < 4.9' 'base >=4.2' \
		'lens >= 4.0 && < 4.14' 'lens >= 4.0' \
		'lens >= 3.8 && < 4.14' 'lens >= 3.8' \
		'transformers >= 0.3 && < 0.5' 'transformers >= 0.3' \
		'hint >= 0.4 && < 0.6' 'hint >= 0.4'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cairo cairo) \
		$(cabal_flag postscript postscript) \
		$(cabal_flag ps ps) \
		$(cabal_flag rasterific rasterific) \
		$(cabal_flag svg svg)
}
