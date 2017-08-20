# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal games

DESCRIPTION="The blubber server, serves blubber clients"
HOMEPAGE="https://secure.plaimi.net/games/blubber.html"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.18:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=app-text/pandoc-1.14:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/scotty-0.7:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

pkg_setup() {
	games_pkg_setup
	haskell-cabal_pkg_setup
}

src_prepare() {
	cabal_chdeps \
		'base       >=4.7 && <4.8' 'base       >=4.7' \
		'base               >=4.7  && <4.9' 'base               >=4.7' \
		'cereal     >=0.4 && <0.5' 'cereal     >=0.4' \
		'cereal             >=0.4   && <0.5' 'cereal             >=0.4' \
		'pandoc             >=1.14  && <1.15' 'pandoc             >=1.14' \
		'scotty             >=0.7   && <0.11' 'scotty             >=0.7' \
		'Cabal              >=1.18  && <1.23' 'Cabal              >=1.18' \
		'process            >=1.2   && <1.3' 'process            >=1.2' \
		'transformers       >=0.4   && <0.5' 'transformers       >=0.4' \
		'data-default-class >=0.0.1 && <0.1' 'data-default-class >=0.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--prefix="${GAMES_PREFIX}"
}

src_compile() {
	haskell-cabal_src_compile
}

src_install() {
	haskell-cabal_src_install
	prepgamesdirs
}

pkg_postinst() {
	haskell-cabal_pkg_postinst
	games_pkg_postinst
}
