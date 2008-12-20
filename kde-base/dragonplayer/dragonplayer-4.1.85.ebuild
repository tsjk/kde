# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdemultimedia"
inherit kde4-meta

DESCRIPTION="Dragon Player is a simple video player for KDE 4"
HOMEPAGE="http://dragonplayer.org/"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=media-libs/xine-lib-1.1.9
	>=media-sound/phonon-4.2.80[xcb]"
DEPEND="${RDEPEND}
	sys-devel/gettext"
