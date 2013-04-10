TEMPLATE = lib
TARGET = booster-qt4-declarative
CONFIG += plugin

target.path = /usr/lib/applauncherd/
INSTALLS += target

# pkgconfig?
LIBS += -lapplauncherd
INCLUDEPATH += /usr/include/applauncherd

SOURCES += eventhandler.cpp \
    pluginfactory.cpp \
    qdeclarativebooster.cpp

HEADERS += qdeclarativebooster.h \
    eventhandler.h \
