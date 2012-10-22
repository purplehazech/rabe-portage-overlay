# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils toolchain-funcs webapp

DESCRIPTION="WebDAV CGI is a Perl CGI for accessing and sharing files, or calendar/addressbooks via WebDAV."
HOMEPAGE="http://webdavcgi.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
WEBAPP_MANUAL_SLOT="yes"
KEYWORDS="~amd64"
IUSE="mysql postgres rcs samba +sqlite +suid"

DEPEND=""
RDEPEND="${DEPEND}
	dev-perl/Archive-Zip
	dev-perl/File-Copy-Link
	dev-perl/PerlIO-gzip
	dev-perl/Quota
	dev-perl/TimeDate
	dev-perl/URI
	dev-perl/UUID-Tiny
	dev-perl/XML-Simple
	media-gfx/graphicsmagick[perl]
	mysql? ( dev-perl/DBD-mysql )
	perl-core/Module-Load
	postgres? ( dev-perl/DBD-Pg )
	rcs? ( dev-perl/Rcs )
	samba? ( dev-perl/Filesys-SmbClient )
	sqlite? ( dev-perl/DBD-SQLite )
	virtual/perl-CGI
"

need_httpd_cgi

REQUIRED_USE="|| ( mysql postgres sqlite )"

src_prepare() {
	epatch "${FILESDIR}/${PV}-logout-var-expansion.patch"
}

src_compile() {
	cgiBinDir='cgi-bin'

	if use suid; then
		webDavWrapper='webdavwrapper'

		$(tc-getCC) ${LDFLAGS} ${CFLAGS} \
			-o ${cgiBinDir}/${webDavWrapper} \
			helper/${webDavWrapper}.c || die "compile ${webDavWrapper} failed"
	fi
}

src_install() {
	webapp_src_preinst

	local htdocsDir='htdocs'
	local confDir='etc'

	local installDirs="$confDir lib locale"

	insinto "${MY_HTDOCSDIR}"
	doins -r ${htdocsDir}/*

	exeinto "${MY_CGIBINDIR}"
	newexe ${cgiBinDir}/logout-dist logout

	doexe ${cgiBinDir}/webdav.pl
	use suid && doexe ${cgiBinDir}/${webDavWrapper}

	local currentDir
	for currentDir in ${installDirs}; do
		dodir "${MY_HOSTROOTDIR}/${currentDir}"
		insinto "${MY_HOSTROOTDIR}/${currentDir}"
		doins -r ${currentDir}/*
	done

	webapp_configfile ${MY_HOSTROOTDIR}/${confDir}/{webdav.conf-dist,mime.types}

	use mysql && webapp_sqlscript mysql sql/mysql.sql
	use postgres && webapp_sqlscript postgres sql/postgresql.sql

	dodoc CHANGELOG INSTALL RELEASE TODO
	dohtml -r doc/*

	webapp_hook_script "${FILESDIR}/reconfig"

	webapp_src_install

	# In order to change the user and group ID at runtime, the webdavwrapper
	# needs to be run as root (set-user-ID and set-group-ID bit)
	if use suid; then
		einfo "Setting SUID and SGID bit for ${webDavWrapper}"
		fowners root:root ${MY_CGIBINDIR}/${webDavWrapper}
		fperms 6755 ${MY_CGIBINDIR}/${webDavWrapper}
		webapp_postinst_txt en "${FILESDIR}/postinstall-${webDavWrapper}-en.txt"
		webapp_hook_script "${FILESDIR}/reconfig-suid"
	else
		ewarn "You have the 'suid' USE flag disabled"
		ewarn "WebDAV CGI won't be able to switch user ids"
	    webapp_postinst_txt en "${FILESDIR}/postinstall-en.txt"
	fi
}
