# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

COMMIT_1="9b42fcb3f7d89c4762f7"
COMMIT_2="c188dc56ce4739504912decc60dc33b6b0b3f335"

DESCRIPTION="Fortune database of quotes from Angel David Revilla, a.k.a. Dross Rotzank, or Dross."
HOMEPAGE="https://gist.github.com/jorgicio"
SRC_URI="https://gist.github.com/jorgicio/${COMMIT_1}/archive/${COMMIT_2}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux ~x86 ~x86-linux"
IUSE=""

DEPEND="games-misc/fortune-mod"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${COMMIT_1}-${COMMIT_2}"

src_compile(){
	mv ${PN} dross || die
	strfile dross || die
}

src_install(){
	insinto /usr/share/fortune
	doins dross dross.dat
}
