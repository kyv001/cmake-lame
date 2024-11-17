#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cmake-lame::lame" for configuration ""
set_property(TARGET cmake-lame::lame APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(cmake-lame::lame PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/lame"
  )

list(APPEND _cmake_import_check_targets cmake-lame::lame )
list(APPEND _cmake_import_check_files_for_cmake-lame::lame "${_IMPORT_PREFIX}/bin/lame" )

# Import target "cmake-lame::mp3rtp" for configuration ""
set_property(TARGET cmake-lame::mp3rtp APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(cmake-lame::mp3rtp PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/mp3rtp"
  )

list(APPEND _cmake_import_check_targets cmake-lame::mp3rtp )
list(APPEND _cmake_import_check_files_for_cmake-lame::mp3rtp "${_IMPORT_PREFIX}/bin/mp3rtp" )

# Import target "cmake-lame::mp3lame" for configuration ""
set_property(TARGET cmake-lame::mp3lame APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(cmake-lame::mp3lame PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmp3lame.so"
  IMPORTED_SONAME_NOCONFIG "libmp3lame.so"
  )

list(APPEND _cmake_import_check_targets cmake-lame::mp3lame )
list(APPEND _cmake_import_check_files_for_cmake-lame::mp3lame "${_IMPORT_PREFIX}/lib/libmp3lame.so" )

# Import target "cmake-lame::mp3lame-static" for configuration ""
set_property(TARGET cmake-lame::mp3lame-static APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(cmake-lame::mp3lame-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmp3lame-static.a"
  )

list(APPEND _cmake_import_check_targets cmake-lame::mp3lame-static )
list(APPEND _cmake_import_check_files_for_cmake-lame::mp3lame-static "${_IMPORT_PREFIX}/lib/libmp3lame-static.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
