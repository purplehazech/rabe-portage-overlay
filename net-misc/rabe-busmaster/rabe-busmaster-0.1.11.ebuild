# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-libs/timezone-data/timezone-data-2012c.ebuild,v 1.1 2012/04/02 04:45:47 vapier Exp $

DESCRIPTION="RaBe Busmaster Middleware"
HOMEPAGE="http://rabe.ch"
SRC_URI="http://intranet.rabe.ch/distfiles/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php
dev-php/pecl-gearman
dev-php/PEAR-Console_Getopt
dev-php/PEAR-System_Daemon
dev-php/PEAR-Log"

src_install() {
	mkdir -p ${D}/usr/share/rabe-busmaster ${D}/usr/bin ${D}/etc/busmaster
	cp -r src ${D}/usr/share/rabe-busmaster
	cp -r lib ${D}/usr/share/rabe-busmaster
	cp -r etc/* ${D}/etc/busmaster/
	cp -r bin/rabe-busmaster ${D}/usr/bin/

	ln -s /etc/busmaster ${D}/usr/share/rabe-busmaster/etc
	chown -R busmaster:busmaster ${D}/usr/share/puppet-infra-project
	chmod -R ugo-w ${D}/usr/share/puppet-infra-project
	chmod -R ugo=rx ${D}/usr/bin/rabe-busmaster
}
