# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-php/pecl-uploadprogress/pecl-uploadprogress-1.0.3.1.ebuild,v 1.1 2012/01/26 09:12:41 olemarkus Exp $

EAPI=3

USE_PHP="php5-3 php5-4"

inherit php-ext-pecl-r2

DESCRIPTION="PHP bindings for 0MQ"
HOMEPAGE="https://github.com/mkoppanen/php-zmq"
SRC_URI="https://github.com/mkoppanen/php-zmq/zipball/${PV} -> ${P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-libs/zeromq"

GITHUB_COMMIT="9e04bb5"
S="${WORKDIR}/mkoppanen-php-zmq-${GITHUB_COMMIT}"
