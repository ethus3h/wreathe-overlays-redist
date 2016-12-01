# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit multilib unpacker eutils

DESCRIPTION="Vagrant binary Package"
HOMEPAGE=""
SRC_URI="http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/vagrant_1.3.3_x86_64.deb"

LICENSE="gpl"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/opt/vagrant"
QA_PREBUILT="*"

src_install() {
    local version flapper

	dodir /opt/vagrant
	cp -r ./* "${ED}opt/vagrant"

	make_wrapper vagrant /opt/vagrant/bin/vagrant
}

