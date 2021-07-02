cmake_minimum_required(VERSION 3.6.0)

project(mapplauncherd-qt
	VERSION 1.1.17
	DESCRIPTION "mapplauncherd-qt"
	LANGUAGES CXX)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

include(FeatureSummary)
include(GNUInstallDirs)

set(QT_MIN_VERSION "5.6.0")
find_package(Qt5 COMPONENTS Core Quick REQUIRED)
find_package(PkgConfig REQUIRED)
#

add_subdirectory(mdeclarativecache5)
add_subdirectory(qtbooster)

install(FILES
    data/booster-qt5.service
    data/booster-qt5-signal.service
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/systemd/user/)

install(FILES
    data/pkgconfig/qdeclarative5-boostable.pc
    data/pkgconfig/qt5-boostable.pc
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig)

install(FILES
    data/mkspecs/features/qdeclarative-boostable.prf
    data/mkspecs/features/qt-boostable.prf
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/qt/mkspecs/features/)

