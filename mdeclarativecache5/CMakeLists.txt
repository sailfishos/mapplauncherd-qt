
set(QT_MIN_VERSION "5.6.0")
find_package(Qt5 COMPONENTS Core DBus REQUIRED)

set(MDECLARATIVE_CACHE_SOURCES
    mdeclarativecache.cpp
)

set(MDECLARATIVE_CACHE_HEADERS
    mdeclarativecache.h
    mdeclarativecache_p.h
    testabilityinterface.h
)


add_library(mdeclarativecache5 SHARED ${MDECLARATIVE_CACHE_SOURCES} ${MDECLARATIVE_CACHE_HEADERS})
target_link_libraries(mdeclarativecache5
    Qt5::Core
    Qt::CorePrivate
    Qt5::Quick
)

set_target_properties(mdeclarativecache5 PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION ${PROJECT_VERSION_MAJOR})

install(TARGETS mdeclarativecache5
    LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR})

install(FILES
    MDeclarativeCache
    mdeclarativecache.h
    DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR}/mdeclarativecache5
    COMPONENT Devel
    PERMISSIONS OWNER_READ GROUP_READ WORLD_READ)
