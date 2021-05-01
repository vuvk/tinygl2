find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

add_executable(TinyGL2Gears gears)
target_link_libraries(TinyGL2Gears TinyGL2_shared m ${SDL2_LIBRARIES})

add_executable(TinyGL2Triangle triangle)
target_link_libraries(TinyGL2Triangle TinyGL2_shared ${SDL2_LIBRARIES})

