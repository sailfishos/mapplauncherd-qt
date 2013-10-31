TEMPLATE = subdirs

SUBDIRS = qtbooster \
    data

equals(QT_MAJOR_VERSION, 4) {
    SUBDIRS += mdeclarativecache
}

equals(QT_MAJOR_VERSION, 5) {
    SUBDIRS += mdeclarativecache5
}
