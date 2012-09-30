# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ALIAN
MODULE_VERSION=3.1
inherit perl-module

DESCRIPTION="Filesys::SmbClient - Interface for access Samba filesystem with libsmclient.so"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="net-fs/samba[smbclient]"
RDEPEND="${DEPEND}"

SRC_TEST="do"
