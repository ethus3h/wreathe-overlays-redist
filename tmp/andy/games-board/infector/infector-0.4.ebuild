# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit games

DESCRIPTION="Ataxx/Hexxagon clone."

HOMEPAGE="http://infector.mangobrain.co.uk/"
SRC_URI="http://infector.mangobrain.co.uk/downloads/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-cpp/gtkmm:2.4
         x11-misc/xdg-utils
		 x11-libs/gdk-pixbuf"
DEPEND="${RDEPEND}"

src_prepare() {
	# Remove xdg install calls due violating sandbox
	sed -i "s/install-data-am: install-data-local/install-data-am: ${PN}.desktop/" \
		data/Makefile.in
}

src_install() {
	emake DESTDIR="${D}" install
	for d in ChangeLog AUTHORS NEWS README; do
		dodoc "${d}"
	done

	sizes="16 22 24 32 48 64 72 96 128"
	for i in ${sizes}; do
		doicon "data/infector-$i.png"
	done

	domenu "data/${PN}.desktop"
}
