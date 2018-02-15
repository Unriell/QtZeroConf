QT = core network

include($$PWD/qtzeroconf.pri)

#VERSION = 1.1

TEMPLATE = lib
TARGET = $$qtLibraryTarget(QtZeroConf$$QT_LIBINFIX)
CONFIG += module create_prl
CONFIG-=android_install
DEFINES+= QT_BUILD_ZEROCONF_LIB
mac:QMAKE_FRAMEWORK_BUNDLE_NAME = $$TARGET

android {
LIBS += -L$$(ANDROID_LIBCRYSTAX_LIBDIR)
}


target.path = $$PREFIX/lib
