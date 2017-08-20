# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999
#hackport: flags: -prof,th:template_haskell

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Cloud Haskell: Erlang-style concurrency in Haskell"
HOMEPAGE="http://haskell-distributed.github.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template_haskell"

RDEPEND=">=dev-haskell/binary-0.6.3:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/data-accessor-0.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/distributed-static-0.2:=[profile?] <dev-haskell/distributed-static-0.4:=[profile?]
	>=dev-haskell/exceptions-0.5:=[profile?]
	>=dev-haskell/hashable-1.2.0.5:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.4:=[profile?]
	>=dev-haskell/network-transport-0.4.1.0:=[profile?] <dev-haskell/network-transport-0.5:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/rank1dynamic-0.1:=[profile?] <dev-haskell/rank1dynamic-0.4:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.7:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-mkweak.patch
	epatch "${FILESDIR}"/${P}-th.patch
	cabal_chdeps \
		'binary >= 0.6.3 && < 0.8' 'binary >= 0.6.3 && < 0.9' \
		'transformers >= 0.2 && < 0.5' 'transformers >= 0.2 && < 0.6' \
		'ghc-prim >= 0.2 && < 0.5' 'ghc-prim >= 0.2 && < 0.6' \
		'template-haskell >= 2.6 && < 2.11' 'template-haskell >= 2.6 && < 2.12'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-prof \
		$(cabal_flag template_haskell th)
}
