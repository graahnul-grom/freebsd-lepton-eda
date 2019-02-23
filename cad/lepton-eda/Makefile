# $FreeBSD$

PORTNAME=	lepton-eda
PORTVERSION=	1.9.7
DISTVERSIONSUFFIX=	-20181211
CATEGORIES=	cad

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	Lepton Electronic Design Automation

LICENSE=	GPLv2+

LIB_DEPENDS=	libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libguile-2.0.so:lang/guile2 \
		libstroke.so:devel/libstroke \
		libpng16.so:graphics/png \
		libgc-threaded.so:devel/boehm-gc-threaded

USES=	autoreconf desktop-file-utils shared-mime-info libtool \
		pkgconfig pathfix python:run perl5 shebangfix makeinfo gnome \
		groff:build localbase gettext

USE_GITHUB=	yes

USE_GNOME=	gtk20 cairo
USE_LDCONFIG=	yes

SHEBANG_FILES=	utils/scripts/lepton-tragesym \
		utils/scripts/lepton-archive.py \
		utils/gxyrs/lepton-xyrs.pl \
		utils/scripts/gschupdate \
		utils/scripts/gsymupdate \
		utils/scripts/lepton-pcb_backannotate \
		utils/scripts/lepton-refdes_renum \
		utils/scripts/lepton-symfix \
		examples/lightning_detector/bom \
		contrib/scripts/mk_char_tab.pl \
		contrib/scripts/pads_backannotate \
		contrib/scripts/sarlacc_sym

PORTEXAMPLES=	examples/*

GNU_CONFIGURE=	yes

INSTALLS_ICONS=	yes

INFO=	lepton-scheme

OPTIONS_DEFINE=	DOCS NLS EXAMPLES
OPTIONS_DEFAULT=	DOCS NLS EXAMPLES

OPTIONS_SUB=	yes

NLS_CONFIGURE_ENABLE=	nls

# we use gettext anyway, so just to make portlint happy:
#
NLS_USES=	gettext

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
