# $NetBSD: Makefile,v 1.4 2015/09/06 06:55:49 mef Exp $

DISTNAME=	Term-UI-0.46
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Term/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~bingos/Term-UI.pm
COMMENT=	Methods to ask both elaborate questions and simple yes/no
LICENSE=	${PERL5_LICENSE}

# for make test
BUILD_DEPENDS+=	p5-Log-Message-Simple-[0-9]*:../../devel/p5-Log-Message-Simple
BUILD_DEPENDS+=	p5-Log-Message-[0-9]*:../../devel/p5-Log-Message

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Term/UI/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
