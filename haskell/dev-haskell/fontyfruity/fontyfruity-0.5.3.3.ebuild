# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="FontyFruity"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A true type file format loader"
HOMEPAGE="http://hackage.haskell.org/package/FontyFruity"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/text:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

S="${WORKDIR}/${MY_P}"
