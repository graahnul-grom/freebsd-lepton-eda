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

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}
DATADIR=	${PREFIX}/share/${PORTNAME}

USE_GNOME=	gtk20
INSTALLS_ICONS=	yes

.include <bsd.port.mk>

