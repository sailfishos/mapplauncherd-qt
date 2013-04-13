TEMPLATE = lib
CONFIG += plugin

equals(QT_MAJOR_VERSION, 4): TARGET = booster-qt
equals(QT_MAJOR_VERSION, 5): TARGET = booster-qt5

target.path = /usr/lib/applauncherd/
INSTALLS += target

# pkgconfig?
LIBS += -lapplauncherd
INCLUDEPATH += /usr/include/applauncherd

SOURCES += qtbooster.cpp \
    pluginfactory.cpp
