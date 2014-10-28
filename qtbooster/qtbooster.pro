TEMPLATE = app

equals(QT_MAJOR_VERSION, 4): TARGET = booster-qt4
equals(QT_MAJOR_VERSION, 5): TARGET = booster-qt5

target.path = /usr/libexec/mapplauncherd/
INSTALLS += target

# Resolve all relocations at launch time.
QMAKE_LFLAGS += -Wl,-z,now

QT += network dbus xml sql 

CONFIG += link_pkgconfig
PKGCONFIG += glib-2.0 gobject-2.0 gmodule-2.0 gio-2.0 libffi sqlite3 libxml-2.0
# pkgconfig? 
LIBS += -lapplauncherd -lresolv
INCLUDEPATH += /usr/include/applauncherd

SOURCES += qtbooster.cpp
HEADERS += qtbooster.h
