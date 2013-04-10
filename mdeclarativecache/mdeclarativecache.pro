TEMPLATE = lib
TARGET = mdeclarativecache

target.path = /usr/lib/
INSTALLS += target

SOURCES += mdeclarativecache.cpp

HEADERS += mdeclarativecache.h \
    mdeclarativecache_p.h \
    testabilityinterface.h

INSTALL_HEADERS += MDeclarativeCache

