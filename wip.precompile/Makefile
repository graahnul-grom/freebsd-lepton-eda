# $FreeBSD: head/cad/lepton-eda/Makefile 493674 2019-02-23 13:49:27Z tobik $

PORTNAME=	lepton-eda
PORTVERSION=	1.9.7

CONFLICTS_INSTALL=	lepton-eda

CATEGORIES=	cad

MASTER_SITES=	http://graahnul.beget.tech/lepton-eda-pc/
# MASTER_SITES=	http://demon/ee/

MAINTAINER=	graahnul.grom@gmail.com
COMMENT=	Lepton EDA - WITH PRECOMPILE SUPPORT

LICENSE=	GPLv2+

LIB_DEPENDS=	libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libgc-threaded.so:devel/boehm-gc-threaded \
		libguile-2.0.so:lang/guile2 \
		libpng.so:graphics/png \
		libstroke.so:devel/libstroke

USES=		autoreconf desktop-file-utils gettext-tools gnome groff:build \
		libtool localbase makeinfo pathfix perl5 pkgconfig python:run \
		shared-mime-info shebangfix
# USE_GITHUB=	yes
USE_GNOME=	cairo gtk20
USE_LDCONFIG=	yes

SHEBANG_FILES=	utils/scripts/lepton-tragesym \
		utils/scripts/lepton-archive.py \
		utils/xyrs/lepton-xyrs.pl \
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
INSTALL_TARGET=	install-strip

INSTALLS_ICONS=	yes

INFO=	lepton-scheme

OPTIONS_DEFINE=	DOCS EXAMPLES NLS
OPTIONS_SUB=	yes

NLS_CONFIGURE_ENABLE=	nls
NLS_USES=		gettext-runtime

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

post-install:
	@LD_LIBRARY_PATH=${STAGEDIR}${PREFIX}/lib \
	LEPTON_SCM_PRECOMPILE=1 \
	LEPTON_SCM_PRECOMPILE_SCRIPT=${STAGEDIR}${PREFIX}/share/lepton-eda/scheme/schematic/precompile.scm \
	LEPTON_SCM_PRECOMPILE_SCM_DIR=${STAGEDIR}${PREFIX}/share/lepton-eda/scheme \
	LEPTON_SCM_PRECOMPILE_OUT_DIR=${STAGEDIR}${PREFIX}/share/lepton-eda/ccache \
	LEPTON_SCM_PRECOMPILE_RECURSIVE=1 \
	LEPTON_SCM_PRECOMPILE_FNAME_EXT=.scm \
	${STAGEDIR}${PREFIX}/bin/lepton-schematic

.include <bsd.port.mk>
