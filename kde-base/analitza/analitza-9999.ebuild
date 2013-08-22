# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_HANDBOOK="never"
OPENGL_REQUIRED="optional"
inherit kde4-base

DESCRIPTION="KDE library for mathematical features"
KEYWORDS=""
IUSE="debug readline"

DEPEND="
	opengl? ( virtual/glu )
	readline? ( sys-libs/readline )
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_with opengl OpenGL)
		$(cmake-utils_use_with readline)
	)

	kde4-base_src_configure
}
