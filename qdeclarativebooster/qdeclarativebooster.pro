TEMPLATE = app

equasl(QT_MAJOR_VERSION, 4): QT += declarative
equals(QT_MAJOR_VERSION, 5): QT += concurrent quick

equals(QT_MAJOR_VERSION, 4): TARGET = booster-qml
equals(QT_MAJOR_VERSION, 5): TARGET = booster-qtquick2

target.path = /usr/libexec/mapplauncherd/
INSTALLS += target

# pkgconfig?
LIBS += -lapplauncherd
INCLUDEPATH += /usr/include/applauncherd

equals(QT_MAJOR_VERSION, 4) {
    INCLUDEPATH += ../mdeclarativecache
    LIBS += -L../mdeclarativecache/ -lmdeclarativecache
}
equals(QT_MAJOR_VERSION, 5) {
    INCLUDEPATH += ../mdeclarativecache5
    LIBS += -L../mdeclarativecache5/ -lmdeclarativecache5
}

SOURCES += eventhandler.cpp \
    qdeclarativebooster.cpp

HEADERS += qdeclarativebooster.h \
    eventhandler.h \
