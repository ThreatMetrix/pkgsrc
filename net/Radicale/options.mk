# $NetBSD: options.mk,v 1.4 2015/12/05 21:25:55 adam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.Radicale
PKG_SUPPORTED_OPTIONS=	git ldap

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgit)
DEPENDS+=	${PYPKGPREFIX}-dulwich-[0-9]*:../../devel/py-dulwich
.endif

.if !empty(PKG_OPTIONS:Mldap)
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 35 # py-ldap
DEPENDS+=	${PYPKGPREFIX}-ldap-[0-9]*:../../databases/py-ldap
.endif
