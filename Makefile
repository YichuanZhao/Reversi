#############################################################################
# Makefile for building: Reversi
# Generated by qmake (3.0) (Qt 5.1.1) on: ?? ?? 16 07:53:30 2014
# Project:  Reversi.pro
# Template: app
# Command: F:\QT5.1.1\5.1.1\msvc2012_64\bin\qmake.exe -spec win32-msvc2012 CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Reversi.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = F:\QT5.1.1\5.1.1\msvc2012_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = $(COPY)
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = del
SYMLINK       = copy /y
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: Reversi.pro F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\win32-msvc2012\qmake.conf F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\spec_pre.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\common\shell-win32.conf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\qconfig.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axbase.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axcontainer.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axserver.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_clucene.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_concurrent.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_core.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_declarative.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_designer.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_designercomponents.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_gui.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_help.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_multimedia.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_multimediawidgets.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_network.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_opengl.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_openglextensions.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_platformsupport.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_printsupport.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qml.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qmldevtools.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qmltest.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qtmultimediaquicktools.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_quick.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_quickparticles.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_script.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_scripttools.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_sensors.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_serialport.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_sql.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_svg.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_testlib.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_uitools.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_v8.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_webkit.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_webkitwidgets.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_widgets.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_xml.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_xmlpatterns.pri \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt_functions.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt_config.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\win32-msvc2012\qmake.conf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\spec_post.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\exclusive_builds.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\default_pre.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\default_pre.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\resolve_config.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\default_post.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qml_debug.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\declarative_debug.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\rtti.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\warn_on.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\resources.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\moc.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\opengl.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\uic.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\windows.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\testcase_targets.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\exceptions.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\yacc.prf \
		F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\lex.prf \
		Reversi.pro \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5OpenGL.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Declarative.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Widgets.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Script.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Gui.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Core.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/libEGLd.prl \
		F:/QT5.1.1/5.1.1/msvc2012_64/lib/libGLESv2d.prl
	$(QMAKE) -spec win32-msvc2012 CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Reversi.pro
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\spec_pre.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\common\shell-win32.conf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\qconfig.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axbase.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axcontainer.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_axserver.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_clucene.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_concurrent.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_core.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_declarative.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_designer.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_designercomponents.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_gui.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_help.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_multimedia.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_multimediawidgets.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_network.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_opengl.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_openglextensions.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_platformsupport.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_printsupport.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qml.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qmldevtools.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qmltest.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_qtmultimediaquicktools.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_quick.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_quickparticles.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_script.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_scripttools.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_sensors.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_serialport.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_sql.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_svg.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_testlib.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_uitools.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_v8.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_webkit.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_webkitwidgets.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_widgets.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_xml.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\modules\qt_lib_xmlpatterns.pri:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt_functions.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt_config.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\win32-msvc2012\qmake.conf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\spec_post.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\exclusive_builds.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\default_pre.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\default_pre.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\resolve_config.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\default_post.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qml_debug.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\declarative_debug.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\rtti.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\warn_on.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\qt.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\resources.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\moc.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\opengl.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\uic.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\win32\windows.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\testcase_targets.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\exceptions.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\yacc.prf:
F:\QT5.1.1\5.1.1\msvc2012_64\mkspecs\features\lex.prf:
Reversi.pro:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5OpenGL.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Declarative.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Widgets.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Script.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Gui.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/Qt5Core.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/libEGLd.prl:
F:/QT5.1.1/5.1.1/msvc2012_64/lib/libGLESv2d.prl:
qmake: FORCE
	@$(QMAKE) -spec win32-msvc2012 CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Reversi.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first FORCE
all: debug-all release-all FORCE
clean: debug-clean release-clean FORCE
	-$(DEL_FILE) Reversi.exp
	-$(DEL_FILE) Reversi.ilk
	-$(DEL_FILE) vc*.pdb
	-$(DEL_FILE) vc*.idb
distclean: debug-distclean release-distclean FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) Reversi.pdb

debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
