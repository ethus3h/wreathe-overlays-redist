# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A mtl-style monad transformer for general purpose & compositional logging"
HOMEPAGE="https://github.com/ocharles/logging-effect"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.2:=[profile?]
	>=dev-haskell/exceptions-0.8.0.2:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/free-4.12.1:=[profile?] <dev-haskell/free-4.13:=[profile?]
	>=dev-haskell/monad-control-1.0.0.4:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/semigroups-0.16.2.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/stm-2.4.4.1:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/stm-delay-0.1.1.1:=[profile?] <dev-haskell/stm-delay-0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/wl-pprint-text-1.1.0.4:=[profile?] <dev-haskell/wl-pprint-text-1.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
