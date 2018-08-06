# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.3
CATEGORIES=	cad
MASTER_SITES=	http://demon/ee/

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	Lepton Electronic Design Automation

LICENSE=	GPLv2+

LIB_DEPENDS+=libfontconfig.so:x11-fonts/fontconfig
LIB_DEPENDS+=libfreetype.so:print/freetype2
LIB_DEPENDS+=libguile-2.0.so:lang/guile2
LIB_DEPENDS+=libgc-threaded.so:devel/boehm-gc-threaded
LIB_DEPENDS+=libstroke.so:devel/libstroke
LIB_DEPENDS+=libpng16.so:graphics/png

USES=	desktop-file-utils shared-mime-info libtool pkgconfig pathfix python shebangfix

SHEBANG_FILES=	utils/scripts/lepton-tragesym utils/scripts/lepton-archive.py

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}
DATADIR=	${PREFIX}/share/${PORTNAME}

USE_GNOME=	gtk20 cairo
INSTALLS_ICONS=	yes

USE_LDCONFIG=	yes

CONFIGURE_ARGS+=	--disable-nls

INFO=	lepton-scheme

.include <bsd.port.mk>

