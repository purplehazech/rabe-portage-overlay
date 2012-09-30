# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=TOMZO
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION="Perl interface to file system quotas"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	virtual/perl-Digest-SHA"

SRC_TEST="do"
