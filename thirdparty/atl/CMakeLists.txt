message_start_thirdparty()

set(BUILD_TESTING OFF)
set(CMAKE_INSTALL_CMAKEDIR "${CMAKE_INSTALL_CMAKEDIR}/thirdparty")

set(ATL_LIBRARIES_ONLY ON CACHE INTERNAL "")
set(ATL_QUIET ON CACHE INTERNAL "")
set(ATL_LIBRARY_PREFIX adios2_ CACHE INTERNAL "")

add_subdirectory(atl)
set(atl_DIR ${CMAKE_CURRENT_BINARY_DIR}/atl CACHE INTERNAL "")

message_end_thirdparty()
