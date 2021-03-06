TEMPLATE = aux

mkspecs.files = mkspecs/features/qt-boostable.prf mkspecs/features/qdeclarative-boostable.prf
mkspecs.path = $$[QT_INSTALL_DATA]/mkspecs/features

pkgconfig.files = pkgconfig/qt5-boostable.pc pkgconfig/qdeclarative5-boostable.pc
services.files = booster-qt5.service booster-qt5-signal.service
services.files += booster-qt5@.service

pkgconfig.path = $$[QT_INSTALL_LIBS]/pkgconfig
services.path = /usr/lib/systemd/user/

# Apply version to the pkgconfig files before installing
pkgconfig.commands = 'sed -i "s/Version:.*/Version: $$VERSION/" pkgconfig/*.pc'

INSTALLS += mkspecs pkgconfig services
