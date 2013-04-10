TEMPLATE = aux

mkspecs.files = mkspecs/features/qt-boostable.prf mkspecs/features/qdeclarative-boostable.prf
mkspecs.path = $$[QT_INSTALL_DATA]/mkspecs/features

pkgconfig.files = pkgconfig/qt-boostable.pc pkgconfig/qdeclarative-boostable.pc
pkgconfig.path = /usr/lib/pkgconfig

INSTALLS += mkspecs pkgconfig
