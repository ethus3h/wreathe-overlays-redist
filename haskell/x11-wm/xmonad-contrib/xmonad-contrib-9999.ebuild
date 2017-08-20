# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -testing,use_xft:xft

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-r3

DESCRIPTION="Third party extensions for xmonad"
HOMEPAGE="http://xmonad.org/"
EGIT_REPO_URI="https://github.com/xmonad/xmonad-contrib.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+xft testing"

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/x11-1.6.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	~x11-wm/xmonad-${PV}[profile?]
	xft? ( >=dev-haskell/x11-xft-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag testing testing) \
		$(cabal_flag xft use_xft)
}
