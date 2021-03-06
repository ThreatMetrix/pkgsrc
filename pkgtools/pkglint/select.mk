# $NetBSD: select.mk,v 1.3 2016/02/02 08:00:10 rillig Exp $
#
# Selects the proper version of pkglint, depending on whether the
# platform supports the Go programming language.
#

.include "../../mk/bsd.fast.prefs.mk"

# See lang/go/version.mk
.if ${MACHINE_ARCH:Ni386:Nx86_64:Nevbarm} || ${MACHINE_PLATFORM:MSunOS-*-i386}
DEPENDS+=	pkglint4>=4.82<5:../../pkgtools/pkglint4
.else
DEPENDS+=	pkglint>=5:../../pkgtools/pkglint
.endif
