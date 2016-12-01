# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit versionator linux-info

MY_PV=$(replace_version_separator 3 '-' )
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Local Manageability Service (LMS) allows access to Intel® Active Management"
HOMEPAGE="http://software.intel.com/en-us/articles/download-the-latest-intel-amt-open-source-drivers"
SRC_URI="http://software.intel.com/sites/default/files/${MY_P}.tar.gz"

S=${WORKDIR}/${MY_P}

LICENSE="Intel-SDP"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

pkg_pretend() {
	linux-info_pkg_setup
	if ! linux_config_exists || ! linux_chkconfig_present INTEL_MEI
	then
        ewarn "This service requires Intel MEI driver in your kernel config"
        ewarn
        ewarn "  Device Drivers -->"
        ewarn "    Misc devices -->"
        ewarn "      <*> Intel Management Engine Interface (Intel MEI)"
        ewarn
        ewarn "and recompile your kernel ..."
    fi
}

src_prepare() {
	edos2unix README
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README
	newinitd "${FILESDIR}/lms.initd" lms
}
