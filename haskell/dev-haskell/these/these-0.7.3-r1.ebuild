# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An either-or-both data type & a generalized 'zip with padding' typeclass"
HOMEPAGE="https://github.com/isomorphism/these"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.4:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/bifunctors-0.1:=[profile?] <dev-haskell/bifunctors-5.5:=[profile?]
	>=dev-haskell/data-default-class-0.0:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/keys-3.10:=[profile?] <dev-haskell/keys-3.12:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/profunctors-3:=[profile?] <dev-haskell/profunctors-5.3:=[profile?]
	>=dev-haskell/quickcheck-2.8:2=[profile?] <dev-haskell/quickcheck-2.9.3:2=[profile?]
	>=dev-haskell/semigroupoids-1.0:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/transformers-compat-0.2:=[profile?] <dev-haskell/transformers-compat-0.6:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.4:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/vector-instances-3.3.1:=[profile?] <dev-haskell/vector-instances-3.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-instances-0.3.6 <dev-haskell/quickcheck-instances-0.3.13
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'semigroupoids            >= 1.0     && < 5.2' 'semigroupoids            >= 1.0'
}
