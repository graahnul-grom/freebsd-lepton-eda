# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.3
CATEGORIES=	cad
MASTER_SITES=

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	GPL Electronic Design Automation

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>

