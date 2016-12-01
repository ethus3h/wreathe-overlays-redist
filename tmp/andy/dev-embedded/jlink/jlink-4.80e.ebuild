# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit versionator

MY_P="JLink_Linux_V${PV/\./}_$(usex amd64 'x86_64' 'i386')"
INSTALLDIR="/opt/${PN}"

DESCRIPTION="J-Link gdb-server and commander for Segger J-Link jtag adapter"
HOMEPAGE="http://www.segger.com/jlink-software.html"
SRC_URI="amd64? ( JLink_Linux_V${PV/\./}_x86_64.tgz )
	x86? ( JLink_Linux_V${PV/\./}_i386.tgz )"
LICENSE="J-Link EDU Terms of Use"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="fetch strip"
DEPEND=""
RDEPEND="${DEPEND}
	dev-libs/libedit"

S=${WORKDIR}/${MY_P}

src_install() {
	dodir ${INSTALLDIR} || die
	dodir ${INSTALLDIR}/lib || die
	dodir ${INSTALLDIR}/doc || die

	local BINS="JLinkExe JLinkGDBServer JLinkRemoteServer JLinkSWOViewer"
	for wrapper in $BINS ; do
		make_wrapper $wrapper ./$wrapper ${INSTALLDIR} lib
	done

	exeinto ${INSTALLDIR}
	doexe $BINS || die

	exeinto ${INSTALLDIR}/lib
	doexe "libjlinkarm.so.${PV/[a-z]/}.5" || die
	dosym "libjlinkarm.so.${PV/[a-z]/}.5" ${INSTALLDIR}/lib/libjlinkarm.so.$(get_major_version) || die

	insinto ${INSTALLDIR}/doc
	doins README.txt || die
	doins Doc/License.txt
	doins Doc/UM08001_JLink.pdf || die
	doins Doc/ReleaseNotes/ReleaseJLink.html || die

	insinto ${INSTALLDIR}
	doins -r Samples || die "doins failed"

	insinto /lib/udev/rules.d/
	doins 99-jlink.rules || die "doins udev rules failed"
}

pkg_postinst() {
	enewgroup plugdev
	elog "To be able to access the jlink usb adapter, you have to be"
	elog "a member of the 'plugdev' group."
}
