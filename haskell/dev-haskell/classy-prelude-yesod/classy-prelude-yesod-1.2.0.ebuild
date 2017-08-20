# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Provide a classy prelude including common Yesod functionality"
HOMEPAGE="https://github.com/snoyberg/mono-traversable"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/classy-prelude-1.2.0:=[profile?] <dev-haskell/classy-prelude-1.2.1:=[profile?]
	>=dev-haskell/classy-prelude-conduit-1.2.0:=[profile?] <dev-haskell/classy-prelude-conduit-1.2.1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/persistent-1.1:=[profile?]
	>=dev-haskell/yesod-1.2:=[profile?]
	dev-haskell/yesod-newsfeed:=[profile?]
	dev-haskell/yesod-static:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
