# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit autotools git-r3 versionator

DESCRIPTION="Bitcoin CPU/GPU/FPGA miner in C"
HOMEPAGE="https://bitcointalk.org/index.php?topic=28402.0"

EGIT_REPO_URI="https://github.com/kR105/cgminer-alt.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE="+adl avalon bflsc bitforce +blake256 examples hardened icarus modminer ncurses +opencl scrypt +udev ztex"
REQUIRED_USE="
	|| ( avalon bflsc bitforce icarus modminer opencl ztex )
	adl? ( opencl )
	blake256? ( opencl )
	opencl? ( ncurses )
	scrypt? ( opencl )
"

DEPEND="
	!net-misc/cgminer
	!net-misc/cgminer-decred
	net-misc/curl
	ncurses? (
		sys-libs/ncurses:0
	)
	dev-libs/jansson
	opencl? (
		virtual/opencl
	)
	ztex? (
		virtual/libusb:1
	)
	udev? (
		virtual/udev
	)
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	virtual/pkgconfig
	sys-apps/sed
	adl? (
		x11-libs/amd-adl-sdk
	)
"

src_prepare() {
	ln -s /usr/include/ADL/* ADL_SDK/

	eautoreconf
}

src_configure() {
	local CFLAGS="${CFLAGS}"
	use hardened && CFLAGS="${CFLAGS} -nopie"

	CFLAGS="${CFLAGS}" \
	econf \
		$(use_enable adl) \
		$(use_enable avalon) \
		$(use_enable bflsc) \
		$(use_enable bitforce) \
		$(use_enable blake256) \
		$(use_enable icarus) \
		$(use_enable modminer) \
		$(use_with ncurses curses) \
		$(use_enable opencl) \
		$(use_enable scrypt) \
		$(use_with udev libudev) \
		$(use_enable ztex)
	# sanitize directories
	sed -i 's~^\(\#define CGMINER_PREFIX \).*$~\1"'"${EPREFIX}/usr/lib/cgminer"'"~' config.h
}

src_install() {
	dobin cgminer
	dodoc AUTHORS NEWS README API-README
	if use scrypt; then
		dodoc SCRYPT-README
	fi
	if use icarus || use bitforce; then
		dodoc FPGA-README
	fi
	if use modminer; then
		insinto /usr/lib/cgminer/modminer
		doins bitstreams/*.ncd
		dodoc bitstreams/COPYING_fpgaminer
	fi
	if use opencl; then
		insinto /usr/lib/cgminer
		doins *.cl
	fi
	if use ztex; then
		insinto /usr/lib/cgminer/ztex
		doins bitstreams/*.bit
		dodoc bitstreams/COPYING_ztex
	fi
	if use examples; then
		docinto examples
		dodoc api-example.php miner.php API.java api-example.c
	fi
}
