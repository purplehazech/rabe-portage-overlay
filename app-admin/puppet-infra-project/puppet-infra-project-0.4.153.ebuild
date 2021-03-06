# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-libs/timezone-data/timezone-data-2012c.ebuild,v 1.1 2012/04/02 04:45:47 vapier Exp $

DESCRIPTION="Some puppet scripts we use."
HOMEPAGE="http://rabe.ch"
SRC_URI="http://intranet.rabe.ch/distfiles/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-admin/puppet"
RDEPEND="${RDEPEND}"

src_install() {
	mkdir -p "${D}/usr/share/puppet-infra-project"
	cp -r * "${D}/usr/share/puppet-infra-project/"
	chown -R puppet:puppet "${D}/usr/share/puppet-infra-project"
	chmod -R ugo-w "${D}/usr/share/puppet-infra-project"
}
