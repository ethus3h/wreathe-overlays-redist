# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for versioning file stores"
HOMEPAGE="http://hackage.haskell.org/package/filestore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+maxcount"

RESTRICT=test # one darcs test fails

RDEPEND=">=dev-haskell/diff-0.2:=[profile?] <dev-haskell/diff-0.4:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.4
		dev-haskell/mtl )
"

src_prepare() {
	default

	cabal_chdeps \
		'directory >= 1.1 && < 1.3' 'directory >= 1.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maxcount maxcount)
}
