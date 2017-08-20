# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the VTE library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.13.0.0:=[profile?]
	>=dev-haskell/gtk-0.13.0.0:=[profile?]
	>=dev-haskell/pango-0.13.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/vte:0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	dev-haskell/gtk2hs-buildtools
	virtual/pkgconfig
"

src_prepare() {
	cabal_chdeps \
		'glib  >= 0.13.0.0 && < 0.14' 'glib  >= 0.13.0.0' \
		'pango >= 0.13.0.0 && < 0.14' 'pango >= 0.13.0.0' \
		'gtk   >= 0.13.0.0 && < 0.14' 'gtk   >= 0.13.0.0'
}
