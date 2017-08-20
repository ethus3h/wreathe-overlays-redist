# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lens of Aeson"
HOMEPAGE="http://hackage.haskell.org/package/aeson-lens"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # unstable tests: https://github.com/tanakh/aeson-lens/issues/10

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
		>=dev-haskell/lens-3.8:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		>=dev-haskell/unordered-containers-0.2.2:=[profile?]
		>=dev-haskell/vector-0.9:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/doctest-0.9
		)"
