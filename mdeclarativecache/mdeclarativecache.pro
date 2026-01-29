TEMPLATE = lib
TARGET = mdeclarativecache$${QT_MAJOR_VERSION}
VERSION = 0.0.0
QT += quick core-private 

target.path = $$[QT_INSTALL_LIBS]

headers.files = MDeclarativeCache mdeclarativecache.h
headers.path = $$[QT_INSTALL_PREFIX]/include/mdeclarativecache$${QT_MAJOR_VERSION}/

INSTALLS += target headers

SOURCES += mdeclarativecache.cpp

HEADERS += mdeclarativecache.h \
    mdeclarativecache_p.h \
    testabilityinterface.h

