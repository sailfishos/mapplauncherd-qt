TEMPLATE = app

TARGET = booster-qt5

target.path = /usr/libexec/mapplauncherd/
INSTALLS += target

# Resolve all relocations at launch time.
QMAKE_LFLAGS += -Wl,-z,now

QT += network dbus xml sql 

CONFIG += link_pkgconfig
PKGCONFIG += glib-2.0 gobject-2.0 gmodule-2.0 gio-2.0 libffi sqlite3 libxml-2.0 applauncherd
LIBS += -lresolv

SOURCES += qtbooster.cpp
HEADERS += qtbooster.h
