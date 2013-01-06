# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Automatically logs users using the REMOTE_USER environment variable"
HOMEPAGE="http://www.mediawiki.org/wiki/Extension:AutomaticREMOTE_USER"
SRC_URI="https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/LdapAuthentication.git;a=snapshot;h=07fe5c53d316819bf7c4065ee3a638114604ade6;sf=tgz"
SRC_URI="http://intranet.rabe.ch/distfiles/mw-LDAP_Authentication-2.0c.tar.gz"
S="work/LdapAuthentication-07fe5c5"

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
	insinto $(equery f mediawiki | grep extensions$)/LdapAuthentication
	doins LdapAuthentication.php
	doins LdapAutoAuthentication.php
	doins LdapAuthentication.i18n.php
	dodoc README
}
