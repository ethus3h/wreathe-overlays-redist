# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GSL Statistics interface"
HOMEPAGE="http://code.haskell.org/hmatrix-gsl-stats"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
		>=dev-haskell/hmatrix-0.11.0.4:=[profile?]
		dev-haskell/storable-complex:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		sci-libs/gsl
		virtual/lapack
		virtual/blas"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10.1.0"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mkl
}
