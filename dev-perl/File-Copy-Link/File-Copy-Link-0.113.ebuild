# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RMBARKER
MODULE_VERSION=0.113
inherit perl-module

DESCRIPTION="File::Copy::Link - Perl extension for replacing a link by a copy of
the linked file"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/perl-Module-Build"
RDEPEND=""

SRC_TEST="do"
