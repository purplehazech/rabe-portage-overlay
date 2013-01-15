# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-php/phpunit/phpunit-3.6.0.ebuild,v 1.3 2012/03/10 15:30:26 olemarkus Exp $

EAPI="2"
PHP_PEAR_CHANNEL="${FILESDIR}/channel.xml"
PHP_PEAR_PN="vfsStream"

PHP_PEAR_URI="pear.bovigo.org"
inherit php-pear-lib-r1

KEYWORDS="~amd64 ~x86"

DESCRIPTION="vfsStream is a stream wrapper for a virtual file system that may be
helpful in unit tests."
HOMEPAGE="http://pear.bovigo.org/"
LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND=">=dev-php/PEAR-PEAR-1.9.1"
RDEPEND="${DEPEND}
	>=dev-lang/php-5.3"
