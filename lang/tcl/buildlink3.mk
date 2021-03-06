# $NetBSD: buildlink3.mk,v 1.27 2015/11/25 12:51:17 jperkin Exp $

BUILDLINK_TREE+=	tcl

.if !defined(TCL_BUILDLINK3_MK)
TCL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tcl+=	tcl>=8.5.7
BUILDLINK_ABI_DEPENDS.tcl+=	tcl>=8.6.1nb1
BUILDLINK_PKGSRCDIR.tcl?=	../../lang/tcl

BUILDLINK_FILES.tcl+=	bin/tclsh*
#
# Make "-ltcl" and "-ltcl8.6" resolve into "-ltcl86", so that we don't
# need to patch so many Makefiles.
#
BUILDLINK_TRANSFORM+=	l:tcl:tcl86
BUILDLINK_TRANSFORM+=	l:tcl8.6:tcl86

_TOOLS_USE_PKGSRC.tclsh=	yes

TCLCONFIG_SH?=		${BUILDLINK_PREFIX.tcl}/lib/tclConfig.sh
TCLSH=			${BUILDLINK_PREFIX.tcl}/bin/tclsh

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.endif # TCL_BUILDLINK3_MK

BUILDLINK_TREE+=	-tcl
