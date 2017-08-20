# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Camellia block cipher primitives"
HOMEPAGE="https://github.com/vincenthz/hs-crypto-cipher"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/byteable:=[profile?]
	>=dev-haskell/crypto-cipher-types-0.0.3:=[profile?] <dev-haskell/crypto-cipher-types-0.1:=[profile?]
	>=dev-haskell/securemem-0.1.2:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/crypto-cipher-tests
		>=dev-haskell/quickcheck-2
		>=dev-haskell/test-framework-0.3.3
		>=dev-haskell/test-framework-quickcheck2-0.2.9 )
"
