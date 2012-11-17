# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Automatically logs users using the REMOTE_USER environment variable"
HOMEPAGE="http://www.mediawiki.org/wiki/Extension:AutomaticREMOTE_USER"
SRC_URI="https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/WikiEditor.git;a=snapshot;h=refs/heads/REL1_20;sf=tgz"
SRC_URI="http://intranet.rabe.ch/distfiles/mw-WikiEditor-1.20.tar.gz"
S="work/WikiEditor-REL1_20-8383c9c"

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
	doins WikiEditor.php
	doins WikiEditor.i18n.php
	doins WikiEditor.hooks.php
	dodir modules
	doins modules/ext.wikiEditor.highlight.js
	doins modules/ext.wikiEditor.toolbar.hideSig.js
	doins modules/jquery.wikiEditor.preview.css
	doins modules/ext.wikiEditor.tests.toolbar.js
	doins modules/ext.wikiEditor.css
	doins modules/jquery.wikiEditor.dialogs.css
	doins modules/jquery.wikiEditor.html
	doins modules/jquery.wikiEditor.toc.css
	doins modules/jquery.wikiEditor.dialogs.config.css
	doins modules/jquery.wikiEditor.dialogs.js
	dodir modules/images
	dodir modules/images/toolbar
	doins modules/images/toolbar/format-bold-P.png
	doins modules/images/toolbar/insert-xlink.png
	doins modules/images/toolbar/insert-file.png
	doins modules/images/toolbar/example-image.png
	doins modules/images/toolbar/format-bold-ru.png
	doins modules/images/toolbar/loading-small.gif
	doins modules/images/toolbar/format-italic-A.png
	doins modules/images/toolbar/insert-reference.png
	doins modules/images/toolbar/format-italic-ka.png
	doins modules/images/toolbar/insert-newline.png
	doins modules/images/toolbar/format-italic-I.png
	doins modules/images/toolbar/insert-redirect-rtl.png
	doins modules/images/toolbar/format-italic-D.png
	doins modules/images/toolbar/format-italic-K.png
	doins modules/images/toolbar/insert-link.png
	doins modules/images/toolbar/format-italic-C.png
	dodir modules/images/toolbar/png24
	doins modules/images/toolbar/png24/format-bold-P.png
	doins modules/images/toolbar/png24/insert-file.png
	doins modules/images/toolbar/png24/format-italic-A.png
	doins modules/images/toolbar/png24/insert-reference.png
	doins modules/images/toolbar/png24/insert-newline.png
	doins modules/images/toolbar/png24/format-italic-I.png
	doins modules/images/toolbar/png24/generate.sh
	doins modules/images/toolbar/png24/format-italic-K.png
	doins modules/images/toolbar/png24/insert-link.png
	doins modules/images/toolbar/png24/format-italic-C.png
	doins modules/images/toolbar/png24/arrow-right.png
	doins modules/images/toolbar/png24/search-replace.png
	doins modules/images/toolbar/png24/format-bold-A.png
	doins modules/images/toolbar/png24/insert-redirect.png
	doins modules/images/toolbar/png24/insert-signature.png
	doins modules/images/toolbar/png24/format-bold-V.png
	doins modules/images/toolbar/png24/arrow-down.png
	doins modules/images/toolbar/png24/insert-table.png
	doins modules/images/toolbar/png24/format-bold-N.png
	doins modules/images/toolbar/png24/insert-gallery.png
	doins modules/images/toolbar/png24/format-bold.png
	doins modules/images/toolbar/png24/arrow-left.png
	doins modules/images/toolbar/png24/format-superscript.png
	doins modules/images/toolbar/png24/format-bold-B.png
	doins modules/images/toolbar/png24/format-ulist.png
	doins modules/images/toolbar/png24/format-bold-F.png
	doins modules/images/toolbar/png24/insert-nowiki.png
	doins modules/images/toolbar/png24/format-subscript.png
	doins modules/images/toolbar/png24/format-small.png
	doins modules/images/toolbar/png24/format-big.png
	doins modules/images/toolbar/png24/format-olist.png
	doins modules/images/toolbar/png24/format-bold-G.png
	doins modules/images/toolbar/png24/format-italic.png
	doins modules/images/toolbar/format-olist-rtl.png
	doins modules/images/toolbar/search-replace.png
	doins modules/images/toolbar/format-bold-A.png
	doins modules/images/toolbar/insert-redirect.png
	doins modules/images/toolbar/insert-signature.png
	doins modules/images/toolbar/arrow-ltr.png
	doins modules/images/toolbar/format-ulist-rtl.png
	doins modules/images/toolbar/format-bold-V.png
	doins modules/images/toolbar/arrow-down.png
	doins modules/images/toolbar/insert-ilink.png
	doins modules/images/toolbar/insert-table.png
	doins modules/images/toolbar/format-bold-N.png
	doins modules/images/toolbar/arrow-rtl.png
	doins modules/images/toolbar/insert-gallery.png
	doins modules/images/toolbar/format-bold-ka.png
	doins modules/images/toolbar/magnify-clip.png
	doins modules/images/toolbar/format-bold.png
	doins modules/images/toolbar/loading.gif
	doins modules/images/toolbar/format-superscript.png
	doins modules/images/toolbar/format-bold-B.png
	doins modules/images/toolbar/format-ulist.png
	doins modules/images/toolbar/format-bold-F.png
	doins modules/images/toolbar/base.png
	doins modules/images/toolbar/insert-nowiki.png
	doins modules/images/toolbar/format-subscript.png
	doins modules/images/toolbar/format-small.png
	doins modules/images/toolbar/format-big.png
	doins modules/images/toolbar/format-olist.png
	doins modules/images/toolbar/format-bold-G.png
	doins modules/images/toolbar/button-sprite.png
	doins modules/images/toolbar/format-indent.png
	doins modules/images/toolbar/format-indent-rtl.png
	doins modules/images/toolbar/format-italic.png
	dodir modules/images/templateEditor
	doins modules/images/templateEditor/text-base.png
	doins modules/images/templateEditor/dialog-collapsed.png
	doins modules/images/templateEditor/name-base.png
	doins modules/images/templateEditor/collapse.png
	doins modules/images/templateEditor/expand.png
	doins modules/images/templateEditor/wiki-text.png
	doins modules/images/templateEditor/dialog-expanded.png
	dodir modules/images/dialogs
	doins modules/images/dialogs/loading-small.gif
	doins modules/images/dialogs/insert-link-external-rtl.png
	doins modules/images/dialogs/insert-link-notexists.png
	doins modules/images/dialogs/insert-link-external.png
	doins modules/images/dialogs/insert-link-error.png
	doins modules/images/dialogs/insert-link-exists.png
	doins modules/images/dialogs/loading.gif
	doins modules/images/dialogs/insert-link-invalid.png
	dodir modules/images/toc
	doins modules/images/toc/open.png
	doins modules/images/toc/close.png
	doins modules/images/toc/grab.png
	doins modules/images/toc/grip.png
	doins modules/jquery.wikiEditor.toolbar.css
	doins modules/jquery.wikiEditor.toolbar.js
	doins modules/ext.wikiEditor.toc.js
	doins modules/jquery.wikiEditor.templates.js
	doins modules/jquery.wikiEditor.previewDialog.js
	doins modules/jquery.wikiEditor.highlight.js
	doins modules/ext.wikiEditor.previewDialog.js
	doins modules/ext.wikiEditor.toolbar.js
	doins modules/jquery.wikiEditor.publish.js
	doins modules/jquery.wikiEditor.templateEditor.js
	doins modules/jquery.wikiEditor.dialogs.config.js
	doins modules/ext.wikiEditor.dialogs.js
	doins modules/jquery.wikiEditor.preview.js
	doins modules/ext.wikiEditor.preview.js
	doins modules/ext.wikiEditor.templates.js
	doins modules/jquery.wikiEditor.previewDialog.css
	doins modules/jquery.wikiEditor.css
	doins modules/ext.wikiEditor.publish.js
	doins modules/jquery.wikiEditor.toolbar.config.js
	doins modules/jquery.wikiEditor.js
	doins modules/ext.wikiEditor.js
	doins modules/ext.wikiEditor.templateEditor.js
	doins modules/jquery.wikiEditor.toc.js
	doins modules/jquery.wikiEditor.iframe.js
	doins modules/contentCollector.js
	dodoc README
}
