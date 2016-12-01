# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils git-2

DESCRIPTION="Lightweight DBus library for Lua 5.1"
HOMEPAGE="http://sourceforge.net/projects/ldbus/"
SRC_URI=""
EGIT_REPO_URI="git://git.code.sf.net/p/ldbus/code"
EGIT_MASTER="develop"

LICENSE="AFL-3.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-lang/lua-5.1[deprecated]
		dev-libs/libev
		sys-apps/dbus"
RDEPEND="${DEPEND}"
DOCS="AUTHORS README ChangeLog"

