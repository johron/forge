cmake_minimum_required(VERSION 3.15)
project("forge" VERSION 0.1.0 LANGUAGES CXX)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "predefined")
set_property(GLOBAL PROPERTY CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("scripts/cmake/project_settings.cmake")
include("scripts/cmake/compiler_features.cmake")
include("scripts/cmake/compiler_warnings.cmake")
include("scripts/cmake/sanitizers.cmake")
include("scripts/cmake/vcpkg_dependencies.cmake")

add_subdirectory("forge/forge-core")
add_subdirectory("forge/forge-core-tests")
add_subdirectory("forge/forge-client")