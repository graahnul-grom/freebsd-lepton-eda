# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.5
DISTVERSIONSUFFIX=	-20180820
CATEGORIES=	cad

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	Lepton Electronic Design Automation

LICENSE=	GPLv2+

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_DEFAULT=	DOCS NLS

OPTIONS_SUB=	yes

NLS_CONFIGURE_ENABLE=	nls
NLS_USES=	gettext

LIB_DEPENDS+=libfontconfig.so:x11-fonts/fontconfig
LIB_DEPENDS+=libfreetype.so:print/freetype2
LIB_DEPENDS+=libguile-2.0.so:lang/guile2
LIB_DEPENDS+=libstroke.so:devel/libstroke
LIB_DEPENDS+=libpng16.so:graphics/png

USES+=autoreconf
USES+=gettext
USES+=desktop-file-utils
USES+=shared-mime-info
USES+=libtool
USES+=pkgconfig
USES+=pathfix
USES+=python:run
USES+=perl5
USES+=shebangfix
USES+=makeinfo

USE_GITHUB=	yes

USE_GNOME=	gtk20 cairo
USE_LDCONFIG=	yes

SHEBANG_FILES+=utils/scripts/lepton-tragesym
SHEBANG_FILES+=utils/scripts/lepton-archive.py
SHEBANG_FILES+=utils/gxyrs/lepton-xyrs.pl
SHEBANG_FILES+=utils/scripts/gschupdate
SHEBANG_FILES+=utils/scripts/gsymupdate
SHEBANG_FILES+=utils/scripts/lepton-pcb_backannotate
SHEBANG_FILES+=utils/scripts/lepton-refdes_renum
SHEBANG_FILES+=utils/scripts/lepton-symfix

SHEBANG_FILES+=examples/lightning_detector/bom

SHEBANG_FILES+=contrib/scripts/mk_char_tab.pl
SHEBANG_FILES+=contrib/scripts/pads_backannotate
SHEBANG_FILES+=contrib/scripts/sarlacc_sym

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}
DATADIR=	${PREFIX}/share/${PORTNAME}

INSTALLS_ICONS=	yes

INFO=	lepton-scheme

pre-build:
	${REINPLACE_CMD} \
		-e 's,^\(INSTALL_DATA = \)install\(.*\),\1$${INSTALL}\2,' \
		-e 's,^\(INSTALL_PROGRAM = \)install\(.*\),\1$${INSTALL}\2,' \
		-e 's,^\(INSTALL_SCRIPT = \)install\(.*\),\1$${INSTALL}\2,' \
		${WRKSRC}/attrib/data/Makefile \
		${WRKSRC}/liblepton/data/Makefile \
		${WRKSRC}/schematic/data/Makefile

.include <bsd.port.mk>
