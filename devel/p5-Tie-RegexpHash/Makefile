# $NetBSD: Makefile,v 1.9 2015/06/12 10:49:54 wiz Exp $

DISTNAME=	Tie-RegexpHash-0.17
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tie/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Tie-RegexpHash/
COMMENT=	Use regular expressions as hash keys
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Tie/RegexpHash/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
