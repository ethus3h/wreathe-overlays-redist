# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit versionator

MY_MINOR="$(get_version_component_range 2-2)"
MY_SUBMINOR="$(get_version_component_range 3-3)"
if [[ ${MY_SUBMINOR} =~ ^-?[0-9]+$ ]]
then
	MY_SUBMINOR_CHAR="$(printf \\$(printf '%03o' $((96+${MY_SUBMINOR}))))"
fi

MY_PV="$(get_major_version)${MY_MINOR}${MY_SUBMINOR_CHAR}"
FILENAME="JLink_Linux_V${MY_PV}"
INSTALLDIR="/opt/${PN}"

DESCRIPTION="J-Link gdb-server and commander for Segger J-Link jtag adapter"
HOMEPAGE="http://www.segger.com/jlink-software.html"
SRC_URI="${FILENAME}.tgz"

LICENSE="J-Link EDU Terms of Use"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="fetch strip"
DEPEND=""
RDEPEND="${DEPEND}
	amd64? ( app-emulation/emul-linux-x86-xlibs )"

S=${WORKDIR}/${FILENAME}

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
	doexe "libjlinkarm.so.${PV}.0" || die
	dosym "libjlinkarm.so.${PV}.0" ${INSTALLDIR}/lib/libjlinkarm.so.$(get_major_version) || die
	if use amd64; then
		dosym /lib32/libreadline.so.6 ${INSTALLDIR}/lib/libreadline.so.5 || die
	fi

	insinto ${INSTALLDIR}/doc
	doins README.txt || die
	doins Doc/{UM08001_JLinkARM.pdf,UM08005_JLinkGDBServer.pdf} || die
	doins Doc/ReleaseNotes/ReleaseJLinkARM.html || die

	insinto ${INSTALLDIR}
	doins -r Samples || die "doins failed"

	insinto /lib/udev/rules.d/
	doins 45-jlink.rules || die "doins udev rules failed"
}

pkg_postinst() {
	enewgroup plugdev
	elog "To be able to access the jlink usb adapter, you have to be"
	elog "a member of the 'plugdev' group."
}
