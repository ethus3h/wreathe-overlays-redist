# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI="3"
TRINITY_MODULE_NAME="tdenetwork"

inherit trinity-meta

DESCRIPTION="Trinity RSS server and client for DCOP"
KEYWORDS=
IUSE=""

DEPEND=">=trinity-base/librss-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

TSM_EXTRACT_ALSO="librss/"
