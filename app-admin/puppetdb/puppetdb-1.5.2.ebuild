# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/puppet/puppet-3.0.1.ebuild,v 1.10 2012/12/31 16:16:32 ago Exp $

EAPI="4"
USE_RUBY="ruby19"
inherit eutils ruby-ng user versionator

RPV=${PV}
RP=${P}

DESCRIPTION="PuppetDB stores data generated by Puppet for Inventory and Exported Resources"
HOMEPAGE="http://puppetlabs.com/"
SRC_URI="https://github.com/puppetlabs/puppetdb/archive/${RPV}.tar.gz"

LICENSE="Apache-2.0 GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE="+terminus"

DEPEND="${DEPEND}
	ruby_targets_ruby19? ( dev-lang/ruby:1.9[yaml] ) 
	dev-lang/leiningen
	dev-ruby/rake
	>=dev-ruby/facter-1.6.2
	dev-java/java-config
	>=virtual/jdk-1.6.0"
RDEPEND="${RDEPEND}
	ruby_targets_ruby19? ( dev-lang/ruby:1.9[yaml] ) 
	dev-ruby/rake
	>=dev-ruby/facter-1.6.2
	dev-java/java-config
	>=virtual/jdk-1.6.0"

SITEFILE="50${PN}-mode-gentoo.el"

PUPPETDB_DIR="/var/lib/${PN}"
PUPPETDB_USER="${PN}"
PUPPETDB_GROUP="${PN}"

RUBY_PATCHES=( "${P}-gentoo.patch" )

pkg_setup() {
	enewgroup "${PUPPETDB_GROUP}"
	# home directory is required for SCM.
	enewuser "${PUPPETDB_USER}" -1 -1 "${PUPPETDB_DIR}" "${PUPPETDB_USER}"
}

each_ruby_prepare() {
    echo ${PV} > ${RP}/version
}


each_ruby_compile() {
	export LEIN_ROOT="ignore"
	export CLASSPATH=/usr/share/clojure-1.5/lib/clojure.jar:/usr/share/java/leiningen-2.0.0-standalone.jar
	# bootstrap as per http://projects.puppetlabs.com/issues/21547
	/usr/bin/rake package:bootstrap
	/usr/bin/rake DESTDIR="${D}" USER='root' || die "Compilation failed"
}

each_ruby_install() {
    export LEIN_ROOT="ignore"
	export CLASSPATH='/usr/share/clojure-1.5/lib/clojure.jar:/usr/share/java/leiningen-2.0.0-standalone.jar'
    /usr/bin/rake install DESTDIR="${D}" || die "Install failed"
	cp ${FILESDIR}/puppetdb-${PV}.initd ${D}/etc/init.d/puppetdb || die "Install init script failed"

	if use terminus; then
		doruby -r puppet/lib/puppet
	fi
}

