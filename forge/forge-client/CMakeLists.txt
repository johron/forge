set(target_name "forge-client")

set(src_precompiled "src/precompiled.h")

file(GLOB_RECURSE src_files "${CMAKE_CURRENT_SOURCE_DIR}/src/*.*")
file(GLOB_RECURSE res_files "${CMAKE_CURRENT_SOURCE_DIR}/res/*.*")

add_executable(${target_name} WIN32 ${src_files} ${res_files})

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${res_files})
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${src_files})

target_link_libraries(${target_name} PUBLIC "forge-core")

set_target_properties(${target_name} PROPERTIES FOLDER "forge")
set_target_properties(${target_name} PROPERTIES LINKER_LANGUAGE CXX)

target_precompile_headers(${target_name} PUBLIC ${src_precompiled})
