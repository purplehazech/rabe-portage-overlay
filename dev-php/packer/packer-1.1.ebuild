# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="PHP Version of the Dean Edwards 's Packer  de Dean Edwards, a
JavaScript Compressor/Obfuscator."
HOMEPAGE="http://joliclic.free.fr/php/javascript-packer/en/"
SRC_URI="http://joliclic.free.fr/php/javascript-packer/packer.php-1.1.zip"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/php"
RDEPEND="$DEPEND"

src_install() {
	insinto /usr/lib/php/include/php/packer/
	doins class.JavaScriptPacker.php  class.JavaScriptPacker.php4
	insinto /usr/share/php5/docs/
	doins example-file.php  example-inline.php  readme.txt
}
