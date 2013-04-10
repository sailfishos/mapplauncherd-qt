TEMPLATE = lib
TARGET = mdeclarativecache5
VERSION = 0.0.0
QT += quick core-private 

target.path = /usr/lib/

headers.files = MDeclarativeCache mdeclarativecache.h
headers.path = /usr/include/mdeclarativecache5/

INSTALLS += target headers

SOURCES += mdeclarativecache.cpp

HEADERS += mdeclarativecache.h \
    mdeclarativecache_p.h \
    testabilityinterface.h

