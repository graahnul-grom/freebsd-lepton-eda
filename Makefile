# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.3
CATEGORIES=	cad
MASTER_SITES=	http://demon/ee/

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	GPL Electronic Design Automation

LICENSE=	GPLv2+

USES=	desktop-file-utils shared-mime-info shebangfix

SHEBANG_FILES=	bin/lepton-tragesym bin/lepton-archive

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}
DATADIR=	${PREFIX}/share/${PORTNAME}

USE_GNOME=	gtk20
INSTALLS_ICONS=	yes

USE_LDCONFIG=	yes

.include <bsd.port.mk>

