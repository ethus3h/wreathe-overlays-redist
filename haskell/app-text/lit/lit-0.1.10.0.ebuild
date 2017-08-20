# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A simple tool for literate programming"
HOMEPAGE="https://github.com/cdosborn/lit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.7.0.3:=
	>=dev-haskell/blaze-markup-0.6:=
	>=dev-haskell/cheapskate-0.1:= <dev-haskell/cheapskate-0.2:=
	>=dev-haskell/highlighting-kate-0.5:=
	>=dev-haskell/parsec-3:= <dev-haskell/parsec-4:=
	>=dev-haskell/text-1:= <dev-haskell/text-2:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	cabal_chdeps \
		'blaze-markup ==0.6.*' 'blaze-markup >=0.6' \
		'blaze-html == 0.7.0.3' 'blaze-html >= 0.7' \
		'filepath ==1.4.*' 'filepath >=1.4' \
		'time ==1.5.*' 'time >=1.5' \
		'highlighting-kate ==0.5.*' 'highlighting-kate >=0.5' \
		'directory ==1.2.*' 'directory >=1.2'
}
