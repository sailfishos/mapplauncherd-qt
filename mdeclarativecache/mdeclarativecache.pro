TEMPLATE = lib
TARGET = mdeclarativecache
VERSION = 0.0.0

QT += declarative

INCLUDE_DEST = /usr/include/mdeclarativecache/

target.path = /usr/lib/

headers.files = MDeclarativeCache mdeclarativecache.h
headers.path = $${INCLUDE_DEST}

compatheaders.files = MDeclarativeCache mdeclarativecache.h
compatheaders.path = $${INCLUDE_DEST}/applauncherd

INSTALLS += target headers compatheaders

SOURCES += mdeclarativecache.cpp

HEADERS += mdeclarativecache.h \
    mdeclarativecache_p.h \
    testabilityinterface.h

