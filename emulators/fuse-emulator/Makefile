# $NetBSD: Makefile,v 1.1 2016/01/17 14:27:38 wiz Exp $

DISTNAME=	fuse-1.1.1
PKGNAME=	${DISTNAME:S/fuse/fuse-emulator/}
PKGREVISION=	7
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://fuse-emulator.sourceforge.net/
COMMENT=	ZX Spectrum Emulator
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		perl pkg-config
GNU_CONFIGURE=		yes

CPPFLAGS+=		-DDEVOSSAUDIO=\"${DEVOSSAUDIO}\"
LIBS+=			${LIBOSSAUDIO}

.include "options.mk"

BUILDLINK_API_DEPENDS.libspectrum+=	libspectrum>=1.1.1
.include "../../emulators/libspectrum/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
