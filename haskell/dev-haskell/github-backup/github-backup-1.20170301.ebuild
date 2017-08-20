# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="backs up everything github knows about a repository, to the repository"
HOMEPAGE="https://github-backup.branchable.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND="dev-haskell/exceptions:=
	>=dev-haskell/github-0.15.0:= <dev-haskell/github-0.16.0:=
	dev-haskell/hslogger:=
	dev-haskell/ifelse:=
	dev-haskell/missingh:=
	dev-haskell/mtl:=
	dev-haskell/optparse-applicative:=
	dev-haskell/pretty-show:=
	dev-haskell/text:=
	dev-haskell/unix-compat:=
	dev-haskell/utf8-string:=
	dev-haskell/vector:=
	>=dev-lang/ghc-7.10.1:=
	network-uri? ( >=dev-haskell/network-2.6:=
			>=dev-haskell/network-uri-2.6:= )
	!network-uri? ( >=dev-haskell/network-2.0:= <dev-haskell/network-2.6:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	dev-haskell/exceptions
	dev-haskell/hslogger
	dev-haskell/ifelse
	dev-haskell/missingh
	dev-haskell/mtl
	dev-haskell/unix-compat
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
