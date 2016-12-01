# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2 eutils

DESCRIPTION="RSound is a networked audio system. It allows applications to
transfer their audio data to a different computer."
HOMEPAGE="http://www.rsound.org/"
EGIT_REPO_URI="git://github.com/Themaister/RSound.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="alsa ao jack openal oss portaudio pulseaudio syslog vlc"

RDEPEND="media-libs/libsamplerate
	alsa? ( media-libs/alsa-lib )
	ao? ( media-libs/libao )
	jack? ( media-sound/jack-audio-connection-kit )
	openal? ( media-libs/openal )
	portaudio? ( media-libs/portaudio )
	pulseaudio? ( media-sound/pulseaudio )
	syslog? ( virtual/logger )
	vlc? ( media-video/vlc )"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}/fix-vlc.patch"
}

src_configure() {
	./configure \
		--prefix="${EPREFIX}"/usr \
		--disable-muroar \
		--disable-roar \
		$(use_enable alsa) \
		$(use_enable ao libao) \
		$(use_enable jack) \
		$(use_enable openal) \
		$(use_enable oss) \
		$(use_enable portaudio) \
		$(use_enable pulseaudio pulse)
}

src_compile() {
	emake || die "emake failed"
	use alsa && emake -C patches/alsa
	use vlc && emake -C patches/vlc
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README ChangeLog DOCUMENTATION AUTHORS

	use alsa && emake DESTDIR="${D}" -C patches/alsa install
	use vlc && emake DESTDIR="${D}" -C patches/vlc install
}
