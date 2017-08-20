# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Embedded domain-specific language for declarative graphics"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/active-0.2:=[profile?] <dev-haskell/active-0.3:=[profile?]
	>=dev-haskell/adjunctions-4.0:=[profile?] <dev-haskell/adjunctions-5.0:=[profile?]
	>=dev-haskell/cereal-0.4.1.1:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/colour-2.3.2:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/diagrams-core-1.4:=[profile?] <dev-haskell/diagrams-core-1.5:=[profile?]
	>=dev-haskell/diagrams-solve-0.1:=[profile?] <dev-haskell/diagrams-solve-0.2:=[profile?]
	>=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1.0:=[profile?]
	>=dev-haskell/dual-tree-0.2:=[profile?] <dev-haskell/dual-tree-0.3:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-1.0:=[profile?]
	>=dev-haskell/fingertree-0.1:=[profile?] <dev-haskell/fingertree-0.2:=[profile?]
	>=dev-haskell/fsnotify-0.2.1:=[profile?] <dev-haskell/fsnotify-0.3:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/intervals-0.7:=[profile?] <dev-haskell/intervals-0.8:=[profile?]
	>=dev-haskell/juicypixels-3.1.5:=[profile?] <dev-haskell/juicypixels-3.3:=[profile?]
	>=dev-haskell/lens-4.6:=[profile?] <dev-haskell/lens-4.16:=[profile?]
	>=dev-haskell/linear-1.20.1:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-haskell/monoid-extras-0.3:=[profile?] <dev-haskell/monoid-extras-0.5:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?]
	>=dev-haskell/profunctors-5.0:=[profile?] <dev-haskell/profunctors-6.0:=[profile?]
	>=dev-haskell/semigroups-0.3.4:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	>=dev-haskell/text-0.7.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/numeric-extras
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.9.2 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'directory >= 1.2 && < 1.3' 'directory >= 1.2' \
		'optparse-applicative >= 0.11 && < 0.14' 'optparse-applicative >= 0.11'
}
