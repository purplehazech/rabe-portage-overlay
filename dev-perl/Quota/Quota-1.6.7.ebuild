# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=TOMZO
MODULE_VERSION=1.6.7
inherit perl-module

DESCRIPTION="Quota - Perl interface to file system quotas"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

SRC_TEST="do"
