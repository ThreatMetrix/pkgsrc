# $NetBSD: Makefile,v 1.48 2015/10/31 18:54:47 nros Exp $
#

PLUGIN_NAME=    rssyl
.include "../../mail/claws-mail/plugins.mk"

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Read RSS 1.0, 2.0 and Atom feeds in Claws-Mail

CONFIGURE_ARGS+= --enable-${PLUGIN_NAME}-plugin

DEPENDS+=	claws-mail-${CLAWS_VERSION}{,nb[0-9]*}:../../mail/claws-mail

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
