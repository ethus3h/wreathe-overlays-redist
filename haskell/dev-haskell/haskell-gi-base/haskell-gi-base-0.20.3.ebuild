# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Foundation for libraries generated by haskell-gi"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi-base"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
#broken API
#KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-1.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	dev-libs/glib:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	virtual/pkgconfig
"
