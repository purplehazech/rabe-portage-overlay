# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Intuitive cmd-line Linux serial communications designed for RS232 devices & modules"
HOMEPAGE="http://sjinn.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/libc"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${P}-destdir.patch"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	dodoc EXAMPLES FAQS README ChangeLog || die
}
