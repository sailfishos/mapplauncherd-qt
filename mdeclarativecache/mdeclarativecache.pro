TEMPLATE = lib
TARGET = mdeclarativecache
VERSION = 0.0.0

QT += declarative

target.path = /usr/lib/

headers.files = MDeclarativeCache mdeclarativecache.h
headers.path = /usr/include/mdeclarativecache/

INSTALLS += target headers

SOURCES += mdeclarativecache.cpp

HEADERS += mdeclarativecache.h \
    mdeclarativecache_p.h \
    testabilityinterface.h
