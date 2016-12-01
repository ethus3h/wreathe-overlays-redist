# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

BINUTILS_VERSION=2.21
GCC_VERSION=4.4.5
GENODEDIR="/usr/src"
TOOLCHAINDIR="${S}/tool"
PACKAGEARCHIVE="${P}.tar.bz2"
GCCARCHIVE="gcc-core-${GCC_VERSION}.tar.bz2"
GXXARCHIVE="gcc-g++-${GCC_VERSION}.tar.bz2"
BINUTILSARCHIVE="binutils-${BINUTILS_VERSION}.tar.bz2"

inherit eutils

DESCRIPTION="An Operating System framework"
HOMEPAGE="http://genode.org"
SRC_URI="http://sourceforge.net/projects/${PN}/files/${PN}/${PV}/${PACKAGEARCHIVE}
http://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/${GCCARCHIVE}
http://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/${GXXARCHIVE}
http://ftp.gnu.org/gnu/binutils/${BINUTILSARCHIVE}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
DEPEND=">=sys-devel/make-3.81
		>=media-libs/libsdl-1.2.14
		>=dev-lang/tcl-8.5.9
		>=dev-tcltk/expect-5.45"

RDEPEND="${DEPEND}"

src_unpack() {
	# Only the genode sources must be unpacked by portage because
	# Genode's tool_chain Makefile expects gcc and binutils to be
	# unpacked elsewhere.
	unpack ${PACKAGEARCHIVE}
	epatch ${FILESDIR}/genode_tool_chain.patch

	# These sources need to be copied or the tool_chain Makefile
	# will download them as a prequisite to building.
	einfo "Copying sources..."
	cp $DISTDIR/${GCCARCHIVE} ${TOOLCHAINDIR}/
	cp $DISTDIR/${GXXARCHIVE} ${TOOLCHAINDIR}/
	cp $DISTDIR/${BINUTILSARCHIVE} ${TOOLCHAINDIR}/

	einfo "Unpacking gcc..."
	tar xjf $DISTDIR/${GCCARCHIVE} -C ${TOOLCHAINDIR}/
	tar xjf $DISTDIR/${GXXARCHIVE} -C ${TOOLCHAINDIR}/

	einfo "Unpacking binutils..."
	tar xjf $DISTDIR/${BINUTILSARCHIVE} -C ${TOOLCHAINDIR}/
}

src_compile() {
	# The tool_chain Makefile configures gcc and binutils AND builds them.
	# Separating the configuration from building would require more Makefile
	# patching.
	einfo "Configuring and building the tool chain..."
	cd ${TOOLCHAINDIR}
	emake DESTDIR="${D}" -f tool_chain build || die
}

src_install() {
	einfo "Installing the tool chain..."
	cd ${TOOLCHAINDIR}
	emake DESTDIR="${D}" -f tool_chain install || die

	# Copy genode sources to /usr/src/
	dodir ${GENODEDIR}
	cp $DISTDIR/${PACKAGEARCHIVE} ${D}${GENODEDIR}

	# Add Genode tool chain path to PATH environment variable
	cat > "${T}/99genode" <<-EOF
PATH="/usr/local/genode-gcc/bin"
EOF
	doenvd "${T}/99genode"

	elog "Genode sources are archived at ${GENODEDIR}/${PACKAGEARCHIVE}"
}
