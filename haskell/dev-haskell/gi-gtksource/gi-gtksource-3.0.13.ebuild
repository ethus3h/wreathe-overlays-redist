# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999
#hackport: flags: +overloaded-methods,+overloaded-properties,+overloaded-signals

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GtkSource bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/gi-atk-2.0:=[profile?] <dev-haskell/gi-atk-2.1:=[profile?]
	>=dev-haskell/gi-cairo-1.0:=[profile?] <dev-haskell/gi-cairo-1.1:=[profile?]
	>=dev-haskell/gi-gdk-3.0:=[profile?] <dev-haskell/gi-gdk-3.1:=[profile?]
	>=dev-haskell/gi-gdkpixbuf-2.0:=[profile?] <dev-haskell/gi-gdkpixbuf-2.1:=[profile?]
	>=dev-haskell/gi-gio-2.0:=[profile?] <dev-haskell/gi-gio-2.1:=[profile?]
	>=dev-haskell/gi-glib-2.0:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/gi-gtk-3.0:=[profile?] <dev-haskell/gi-gtk-3.1:=[profile?]
	>=dev-haskell/gi-pango-1.0:=[profile?] <dev-haskell/gi-pango-1.1:=[profile?]
	>=dev-haskell/haskell-gi-0.20.1:=[profile?] <dev-haskell/haskell-gi-1:=[profile?]
	>=dev-haskell/haskell-gi-base-0.20:=[profile?] <dev-haskell/haskell-gi-base-1:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	x11-libs/gtksourceview:3.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	>=dev-haskell/haskell-gi-0.20.1 <dev-haskell/haskell-gi-1
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=overloaded-methods \
		--flag=overloaded-properties \
		--flag=overloaded-signals
}
