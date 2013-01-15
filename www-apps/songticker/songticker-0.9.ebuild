# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="simple Songticker for Radio RaBe"
HOMEPAGE="http://hairmare.ch/songticker/"
SRC_URI="http://hairmare.ch/songticker/songticker-${PV}.tbz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	dodir /usr/share/songticker
	doins data
	ls
	cd songticker-${PV}
	die
}
