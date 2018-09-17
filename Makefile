# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.5
USE_GITHUB=	yes
DISTVERSIONSUFFIX=	-20180820

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	Lepton Electronic Design Automation
LICENSE=	GPLv2+
CATEGORIES=	cad

OPTIONS_DEFINE=	DOCS

#
# for lepton-eda-1.9.5.tar.gz (extracts to dir named "lepton-eda-1.9.5"):
#
# TODO: is it allowed to use GH_TAGNAME while not using USE_GITHUB:
# GH_TAGNAME=	1.9.5-20180820
# MASTER_SITES=	https://github.com/lepton-eda/lepton-eda/releases/download/${GH_TAGNAME}/
# debug: DMN_DOWN_SUBDIR_SUFFIX=	-20180820
# debug: MASTER_SITES=	https://github.com/lepton-eda/lepton-eda/releases/download/${PORTVERSION}${DMN_DOWN_SUBDIR_SUFFIX}/
# debug: MASTER_SITES=	http://demon/ee/

LIB_DEPENDS+=libfontconfig.so:x11-fonts/fontconfig
LIB_DEPENDS+=libfreetype.so:print/freetype2
LIB_DEPENDS+=libguile-2.0.so:lang/guile2
# LIB_DEPENDS+=libgc-threaded.so:devel/boehm-gc-threaded
# LIB_DEPENDS+=libstroke.so:devel/libstroke
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

#
# work around for errors while running
# build-tools/icon-theme-installer:
#
# Cannot find 'install -m 0644'; You probably want to pass -x $(INSTALL_DATA)
#
# for 3 dirs (attrib/data, liblepton/data, schematic/data)
# the following lines should be in the generated Makefile:
#
# INSTALL = /usr/bin/install -c
# INSTALL_DATA = ${INSTALL} -m 644
# INSTALL_PROGRAM = ${INSTALL}
# INSTALL_SCRIPT = ${INSTALL}
#
# but instead you got:
#
# INSTALL = /usr/bin/install -c
# INSTALL_DATA = install  -m 0644
# INSTALL_PROGRAM = install  -s -m 555
# INSTALL_SCRIPT = install  -m 555
#
# this is so only when building a port (when building from
# git sources and install to the home folder, there are
# no errors)
#
pre-build:
	${REINPLACE_CMD} \
		-e 's,^\(INSTALL_DATA = \)install\(.*\),\1$${INSTALL}\2,' \
		-e 's,^\(INSTALL_PROGRAM = \)install\(.*\),\1$${INSTALL}\2,' \
		-e 's,^\(INSTALL_SCRIPT = \)install\(.*\),\1$${INSTALL}\2,' \
		${WRKSRC}/attrib/data/Makefile \
		${WRKSRC}/liblepton/data/Makefile \
		${WRKSRC}/schematic/data/Makefile

.include <bsd.port.mk>
