# $NetBSD: Makefile,v 1.79 2016/02/01 12:00:09 wiz Exp $

DISTNAME=	dialog-1.3-20160126
PKGNAME=	${DISTNAME:C/-2/.2/}
CATEGORIES=	misc
MASTER_SITES=	ftp://invisible-island.net/dialog/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://invisible-island.net/dialog/dialog.html
COMMENT=	Display dialog boxes from shell scripts
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
MAKE_FILE=	makefile
USE_LIBTOOL=	yes
CONFIGURE_ARGS+=	--with-libtool

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

SUBST_CLASSES+=		rpath
SUBST_FILES.rpath=	dialog-config.in
SUBST_MESSAGE.rpath=	Fixing rpath in dialog-config
SUBST_SED.rpath=	-e 's;-L\(.\);${_COMPILER_RPATH_FLAG}\1\{exec_prefix\}/lib -L\1;'
SUBST_STAGE.rpath=	pre-configure

.include "../../mk/bsd.prefs.mk"
# curses from NetBSD 5 and earlier will coredump when displaying shadows
.if !empty(MACHINE_PLATFORM:MNetBSD-[0-5]*)
CONFIGURE_ARGS+=	--disable-widec
.endif

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
