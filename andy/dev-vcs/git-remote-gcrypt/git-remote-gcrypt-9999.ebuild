# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2

DESCRIPTION="A git remote helper for GPG-encrypted remotes."
HOMEPAGE="https://github.com/blake2-ppc/git-remote-gcrypt"
SRC_URI=""
EGIT_REPO_URI="git://github.com/blake2-ppc/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="app-crypt/gnupg
        dev-vcs/git"
RDEPEND="${DEPEND}"

src_install()
{
	DESTDIR="${D}" prefix="${EPREFIX}/usr" ./install.sh || die "Install failed"
	dodoc README.rst || die "dodc failed"
}
