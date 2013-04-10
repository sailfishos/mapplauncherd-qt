TEMPLATE = subdirs

SUBDIRS = qtbooster \
    qdeclarativebooster \
    data

equals(QT_MAJOR_VERSION, 4) {
    SUBDIRS += mdeclarativecache
    qdeclarativebooster.depends = mdeclarativecache
}

equals(QT_MAJOR_VERSION, 5) {
    SUBDIRS += mdeclarativecache5
    qdeclarativebooster.depends = mdeclarativecache5
}
