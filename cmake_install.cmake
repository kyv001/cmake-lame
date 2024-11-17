# Install script for directory: /home/kyv/Templates/cmake-lame

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lame")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/mp3rtp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mp3rtp")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES "/home/kyv/Templates/cmake-lame/libmp3lame.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmp3lame.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "/home/kyv/Templates/cmake-lame/libmp3lame-static.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/ACM.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/ACMStream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM/ADbg" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/ADbg/ADbg.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/AEncodeProperties.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/DecodeStream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/adebug.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM/ddk" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/ddk/msacmdrv.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/resource.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/ACM/tinyxml" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/ACM/tinyxml/tinyxml.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/Dll" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/Dll/BladeMP3EncDLL.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/Encoder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/Mpegac.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/PropPage.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/PropPage_adv.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/aboutprp.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/iaudioprops.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/dshow" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/dshow/resource.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/brhist.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/console.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/get_audio.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/gpkplotting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/gtkanal.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/lametime.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/main.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/parse.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/rtp.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/frontend" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/frontend/timestatus.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/include" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/include/lame.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/VbrTag.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/bitstream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/encoder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/fft.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/gain_analysis.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame/i386" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/i386/nasm.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/id3tag.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/l3side.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lame-analysis.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lame_global_flags.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lameerror.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/machine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/newmdct.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/psymodel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/quantize.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/quantize_pvt.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/reservoir.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/set_get.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/tables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/util.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/vbrquantize.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame/vector" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/vector/lame_intrin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/version.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mac" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mac/Precompile_Common.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/common.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/dct64_i386.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/decode_i386.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/huffman.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/interface.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/l2tables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer1.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer3.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/mpg123.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/mpglib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/tabinit.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/include" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/include/lame.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/VbrTag.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/bitstream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/encoder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/fft.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/gain_analysis.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame/i386" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/i386/nasm.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/id3tag.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/l3side.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lame-analysis.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lame_global_flags.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/lameerror.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/machine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/newmdct.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/psymodel.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/quantize.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/quantize_pvt.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/reservoir.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/set_get.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/tables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/util.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/vbrquantize.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame/vector" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/vector/lame_intrin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/libmp3lame" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/libmp3lame/version.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/common.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/dct64_i386.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/decode_i386.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/huffman.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/interface.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/l2tables.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer1.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer2.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/layer3.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/mpg123.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/mpglib.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cmake-lame/lame-3.100/mpglib" TYPE FILE OPTIONAL FILES "/home/kyv/Templates/cmake-lame/lame-3.100/mpglib/tabinit.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame" TYPE FILE FILES
    "/home/kyv/Templates/cmake-lame/cmake-lame-config.cmake"
    "/home/kyv/Templates/cmake-lame/cmake-lame-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame/cmake-lame-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame/cmake-lame-targets.cmake"
         "/home/kyv/Templates/cmake-lame/CMakeFiles/Export/86a29e21dc55b66e6b737e9f803c4a40/cmake-lame-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame/cmake-lame-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame/cmake-lame-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame" TYPE FILE FILES "/home/kyv/Templates/cmake-lame/CMakeFiles/Export/86a29e21dc55b66e6b737e9f803c4a40/cmake-lame-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cmake-lame" TYPE FILE FILES "/home/kyv/Templates/cmake-lame/CMakeFiles/Export/86a29e21dc55b66e6b737e9f803c4a40/cmake-lame-targets-noconfig.cmake")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/kyv/Templates/cmake-lame/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/kyv/Templates/cmake-lame/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
