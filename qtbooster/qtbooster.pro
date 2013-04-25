TEMPLATE = app

equals(QT_MAJOR_VERSION, 4): TARGET = booster-qt4
equals(QT_MAJOR_VERSION, 5): TARGET = booster-qt5

target.path = /usr/libexec/mapplauncherd/
INSTALLS += target

# pkgconfig?
LIBS += -lapplauncherd
INCLUDEPATH += /usr/include/applauncherd

SOURCES += qtbooster.cpp
HEADERS += qtbooster.h
