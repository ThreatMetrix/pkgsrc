# $NetBSD: Makefile,v 1.5 2016/01/18 15:33:44 fhajny Exp $
#

DISTNAME=		go-net-20151229
PKGREVISION=		1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_GITHUB:=golang/}
GITHUB_PROJECT=		net
GITHUB_TAG=		0cb26f788d

MAINTAINER=		bsiegert@NetBSD.org
HOMEPAGE=		http://golang.org/
COMMENT=		Supplementary network libraries for Go
LICENSE=		modified-bsd

GO_SRCPATH=		golang.org/x/net
GO_DIST_BASE=		${GITHUB_PROJECT}-${GITHUB_TAG}*

.include "../../textproc/go-text/buildlink3.mk"
.include "../../security/go-crypto/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
