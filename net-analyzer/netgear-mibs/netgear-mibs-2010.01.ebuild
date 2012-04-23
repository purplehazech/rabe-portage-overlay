# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="MIBs for various netgear Products"
HOMEPAGE="http://firmware.netgear-forum.com/mib/"
SRC_URI="http://firmware.netgear-forum.com/mib/FSM726.mib
http://firmware.netgear-forum.com/mib/FSM750S.mib
http://firmware.netgear-forum.com/mib/GSM712.mib
http://firmware.netgear-forum.com/mib/GSM712F.mib
http://firmware.netgear-forum.com/mib/fsm7326.mib
http://firmware.netgear-forum.com/mib/fsm7326_mgmt_security.mib
http://firmware.netgear-forum.com/mib/fsm7326_power_ethernet.mib
http://firmware.netgear-forum.com/mib/fsm7326_qos.mib
http://firmware.netgear-forum.com/mib/fsm7326_qos_acl.mib
http://firmware.netgear-forum.com/mib/fsm7326_qos_diffserv_extensions.mib
http://firmware.netgear-forum.com/mib/fsm7326_qos_diffserv_private.mib
http://firmware.netgear-forum.com/mib/fsm7326_radius.mib
http://firmware.netgear-forum.com/mib/fsm7326_routing.mib
http://firmware.netgear-forum.com/mib/fsm7326_switching.mib
http://firmware.netgear-forum.com/mib/gsm7224.mib
http://firmware.netgear-forum.com/mib/gsm7224_mgmt_security.mib
http://firmware.netgear-forum.com/mib/gsm7224_radius.mib
http://firmware.netgear-forum.com/mib/gsm7224_switching.mib
http://firmware.netgear-forum.com/mib/gsm7312.mib
http://firmware.netgear-forum.com/mib/gsm7312_mgmt_security.mib
http://firmware.netgear-forum.com/mib/gsm7312_qos.mib
http://firmware.netgear-forum.com/mib/gsm7312_qos_acl.mib
http://firmware.netgear-forum.com/mib/gsm7312_qos_diffserv_extensions.mib
http://firmware.netgear-forum.com/mib/gsm7312_qos_diffserv_private.mib
http://firmware.netgear-forum.com/mib/gsm7312_radius.mib
http://firmware.netgear-forum.com/mib/gsm7312_routing.mib
http://firmware.netgear-forum.com/mib/gsm7312_switching.mib
http://firmware.netgear-forum.com/mib/gsm7324.mib
http://firmware.netgear-forum.com/mib/gsm7324_mgmt_security.mib
http://firmware.netgear-forum.com/mib/gsm7324_qos.mib
http://firmware.netgear-forum.com/mib/gsm7324_qos_acl.mib
http://firmware.netgear-forum.com/mib/gsm7324_qos_diffserv_extensions.mib
http://firmware.netgear-forum.com/mib/gsm7324_qos_diffserv_private.mib
http://firmware.netgear-forum.com/mib/gsm7324_radius.mib
http://firmware.netgear-forum.com/mib/gsm7324_routing.mib
http://firmware.netgear-forum.com/mib/gsm7324_switching.mib
http://firmware.netgear-forum.com/mib/power_ethernet.mib
http://firmware.netgear-forum.com/mib/wg302user.mib"

LICENSE="AS-IS-PROPRIETARY"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="net-analyzer/net-snmp"
RDEPEND="${DEPEND}"

src_unpack() {
	cd ${DISTDIR}
	cp ${A} ${WORKDIR}
}

src_install() {
	mkdir -p ../image/usr/share/snmp/mibs/
	cp *.mib ../image/usr/share/snmp/mibs/
}
