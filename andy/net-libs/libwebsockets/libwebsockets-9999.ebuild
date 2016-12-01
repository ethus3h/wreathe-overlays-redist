# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="git://git.libwebsockets.org/libwebsockets"

inherit git-2 cmake-utils

DESCRIPTION="Lightweight pure C library for websockets api."
HOMEPAGE="https://libwebsockets.org"
EGIT_BRANCH="master"
KEYWORDS=""


SRC_URI=""

LICENSE="LGPL-2-with-linking-exception"
SLOT="0"
IUSE="ssl"
DEPEND="ssl? ( dev-libs/openssl )"
RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
        $(cmake-utils_use_with ssl SSL)
    )
    cmake-utils_src_configure
}

