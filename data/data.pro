TEMPLATE = aux

mkspecs.files = mkspecs/features/qt-boostable.prf mkspecs/features/qdeclarative-boostable.prf
mkspecs.path = $$[QT_INSTALL_DATA]/mkspecs/features

pkgconfig.files = pkgconfig/qt$${QT_MAJOR_VERSION}-boostable.pc pkgconfig/qdeclarative$${QT_MAJOR_VERSION}-boostable.pc
services.files = booster-qt$${QT_MAJOR_VERSION}.service booster-qt$${QT_MAJOR_VERSION}-signal.service
services.files += booster-qt$${QT_MAJOR_VERSION}@.service

pkgconfig.path = $$[QT_INSTALL_LIBS]/pkgconfig
services.path = /usr/lib/systemd/user/

# Apply version to the pkgconfig files before installing
pkgconfig.commands = 'sed -i "s/Version:.*/Version: $$VERSION/" pkgconfig/*.pc'

INSTALLS += mkspecs pkgconfig services
