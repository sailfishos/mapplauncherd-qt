pkg_check_modules(MAPPLAUNCHERD "applauncherd" REQUIRED)

include_directories(${MAPPLAUNCHERD_INCLUDE_DIRS})

add_executable(booster-qt5
    qtbooster.cpp
    qtbooster.h
)

target_link_libraries(booster-qt5 PUBLIC
    ${MAPPLAUNCHERD_LIBRARIES}
    Qt5::Core
)

set_property(TARGET booster-qt5 PROPERTY POSITION_INDEPENDENT_CODE TRUE)
set_property(TARGET booster-qt5 PROPERTY CXX_VISIBILITY_PRESET hidden)
set_property(TARGET booster-qt5 PROPERTY VISIBILITY_INLINES_HIDDEN ON)


install(TARGETS booster-qt5 RUNTIME
    DESTINATION ${CMAKE_INSTALL_PREFIX}/libexec/mapplauncherd/)

