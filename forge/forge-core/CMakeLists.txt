set(target_name "forge-core")

set(src_precompiled 
    "src/precompiled.h")

set(src_include 
    "include/forge/forge-core.h")

file(GLOB_RECURSE src_files "${CMAKE_CURRENT_SOURCE_DIR}/src/*.*")
file(GLOB_RECURSE res_files "${CMAKE_CURRENT_SOURCE_DIR}/res/*.*")

add_library(${target_name} STATIC
	${src_include}
	${src_files} 
	${res_files})

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${res_files})
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${src_files})
source_group("include" FILES ${src_include})

find_package(SFML COMPONENTS system window graphics CONFIG REQUIRED)

target_link_libraries(${target_name} PUBLIC "sfml-system")
target_link_libraries(${target_name} PUBLIC "sfml-network")
target_link_libraries(${target_name} PUBLIC "sfml-graphics")
target_link_libraries(${target_name} PUBLIC "sfml-window")
if (WIN32) 
	target_link_libraries(${target_name} PUBLIC "sfml-main")
endif()

target_link_libraries(${target_name} PUBLIC "compiler_warnings")
target_link_libraries(${target_name} PUBLIC "compiler_features")
target_link_libraries(${target_name} PUBLIC "sanitizers")


set_target_properties(${target_name} PROPERTIES FOLDER "forge")
set_target_properties(${target_name} PROPERTIES LINKER_LANGUAGE CXX)

target_precompile_headers(${target_name} PUBLIC ${src_precompiled})