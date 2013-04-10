TEMPLATE = lib
TARGET = booster-qt
CONFIG += plugin

target.path = /usr/lib/applauncherd/
INSTALLS += target

# pkgconfig?
LIBS += -lapplauncherd
INCLUDEPATH += /usr/include/applauncherd

SOURCES += qtbooster.cpp \
    pluginfactory.cpp
