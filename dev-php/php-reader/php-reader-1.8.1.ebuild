# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="PHP library for Object-Oriented media file information reading and writing."
HOMEPAGE="http://code.google.com/p/php-reader/"
SRC_URI="http://php-reader.googlecode.com/files/php-reader-${PV}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/php"
RDEPEND="$DEPEND"

src_install() {
	insinto /usr/share/php
	doins -r library/Zend
	insinto /usr/share/php/docs/
	doins -r docs/Zend_Media
}
