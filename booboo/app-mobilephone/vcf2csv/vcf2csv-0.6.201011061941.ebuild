# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit base versionator

DESCRIPTION="vcf2csv is a command line tool to convert vcard files to html or csv."
HOMEPAGE="http://vcf2csv.sourceforge.net/"

MY_PV=$(replace_version_separator 2 '-')
MY_PV2=$(get_version_component_range 1-2)
MY_P="${PN}-${MY_PV}-src-bin"
SRC_URI="mirror://sourceforge/${PN}/${PN}/${PN}-${MY_PV2}/${MY_P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	sed -i -e 's#/usr/local/bin#$(DESTDIR)/usr/bin#g;s# /usr# $(DESTDIR)/usr#g' Makefile
}

src_compile() {
	emake all
}

src_install() {
	mkdir -p "${D}/usr/bin"
	mkdir -p "${D}/usr/share/man/man1/"
	base_src_install
}
