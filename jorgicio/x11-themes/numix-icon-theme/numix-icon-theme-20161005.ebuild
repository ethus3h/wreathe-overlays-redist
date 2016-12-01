# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

DESCRIPTION="Official icon theme from the Numix project."
HOMEPAGE="https://numixproject.org"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/numixproject/${PN}.git"
	KEYWORDS=""
else
	COMMIT="e03eb71454c176a98733eafa268ff79995f8159d"
	SRC_URI="https://github.com/numixproject/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86 arm"
	S="${WORKDIR}/${PN}-${COMMIT}"
fi

LICENSE="GPL-3.0+"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/share/icons
	doins -r Numix Numix-Light
	dodoc readme.md
}
