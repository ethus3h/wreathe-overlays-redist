# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $ 

inherit base versionator fixheadtails eutils

DESCRIPTION="Squeak Smalltalk unix virtual machine"
HOMEPAGE="http://squeakvm.org/unix/index.html"
SRC_URI="http://squeakvm.org/unix/release/Squeak-${PV}-src.tar.gz"
LICENSE="Apple"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="x11-libs/libX11 x11-libs/libXext x11-libs/libXt
		dev-util/cmake"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Squeak-${PV}-src"

src_compile() {
	cd ${S}
	mkdir build
	cd build
	../unix/cmake/configure \
		--prefix=/usr \
		--mandir=/usr/share/man \
		|| die "configure failed"
	emake || die
}

src_install() {
	cd ${S}/build
	make DESTDIR=${D} docdir=/usr/share/doc/${PF} install || die
	exeinto /usr/lib/squeak
}
