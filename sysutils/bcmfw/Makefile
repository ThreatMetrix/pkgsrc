# $NetBSD: Makefile,v 1.9 2014/12/30 08:57:00 plunky Exp $

DISTNAME=		bcmfw-1.0
CATEGORIES=		sysutils
MASTER_SITES=		http://www.NetBSD.org/~plunky/
DISTFILES=		bcmfw-1.0.tar.gz		\
			bluez-firmware-1.2.tar.gz
SITES.bluez-firmware-1.2.tar.gz= \
			http://bluez.sourceforge.net/download/

MAINTAINER=		plunky@NetBSD.org
COMMENT=		Broadcom 2033 Bluetooth Firmware Loader
LICENSE=		bcmfw-license

RESTRICTED=		No clear permission to redistribute firmware
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}

ONLY_FOR_PLATFORM=	NetBSD-[4-9].*-*

RCD_SCRIPTS+=		bcmfw

FIRMWARE_DIR=		libdata/bcmfw

INSTALLATION_DIRS=	${PKGMANDIR}/man8 ${FIRMWARE_DIR} sbin

PLIST_SUBST+=		FIRMWARE_DIR=${FIRMWARE_DIR}

SUBST_CLASSES+=		dir
SUBST_FILES.dir=	bcmfw.8 bcmfw.c
SUBST_SED.dir=		-e 's,BCM2033-,${PREFIX}/${FIRMWARE_DIR}/&,'
SUBST_STAGE.dir=	post-patch
SUBST_MESSAGE.dir=	Fixing path to firmware directory.

USE_BSD_MAKEFILE=	yes

MAKE_FLAGS+=		CWARNFLAGS.clang=-Wno-error=tautological-compare

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bcmfw ${DESTDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/bcmfw.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKDIR}/bluez-firmware-1.2/broadcom/BCM-LEGAL.txt ${DESTDIR}${PREFIX}/${FIRMWARE_DIR}
	${INSTALL_DATA} ${WRKDIR}/bluez-firmware-1.2/broadcom/BCM2033-FW.bin ${DESTDIR}${PREFIX}/${FIRMWARE_DIR}
	${INSTALL_DATA} ${WRKDIR}/bluez-firmware-1.2/broadcom/BCM2033-MD.hex ${DESTDIR}${PREFIX}/${FIRMWARE_DIR}

.include "../../mk/bsd.pkg.mk"
