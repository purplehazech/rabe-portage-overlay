# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Automatically logs users using the REMOTE_USER environment variable"
HOMEPAGE="http://www.mediawiki.org/wiki/Extension:AutomaticREMOTE_USER"
SRC_URI="https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/Auth_remoteuser.git;a=snapshot;h=90d380823c220ccd57dcec21d16b4703f1d186a7;sf=tgz"
SRC_URI="http://intranet.rabe.ch/distfiles/mw-Auth_remoteuser-1.1.3.tar.gz"
S="work/Auth_remoteuser-90d3808"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="www-apps/mediawiki"
RDEPEND="${DEPEND}"

src_unpack() {
    unpack ${A}
}

src_install() {
    insinto $(equery f mediawiki | grep extensions$)
	doins Auth_remoteuser.php
}
