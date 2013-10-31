TEMPLATE = aux

mkspecs.files = mkspecs/features/qt-boostable.prf mkspecs/features/qdeclarative-boostable.prf
mkspecs.path = $$[QT_INSTALL_DATA]/mkspecs/features

equals(QT_MAJOR_VERSION, 4) {
    pkgconfig.files = pkgconfig/qt-boostable.pc pkgconfig/qdeclarative-boostable.pc
    services.files = booster-qt4.service booster-qml.service
}
equals(QT_MAJOR_VERSION, 5) {
    pkgconfig.files = pkgconfig/qt5-boostable.pc pkgconfig/qdeclarative5-boostable.pc
    services.files = booster-qt5.service booster-signal.service
}

pkgconfig.path = /usr/lib/pkgconfig
services.path = /usr/lib/systemd/user/

INSTALLS += mkspecs pkgconfig services
