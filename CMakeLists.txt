cmake_minimum_required (VERSION 3.15)
project (cmake-lame VERSION 1.0.0 LANGUAGES CXX C)

if (NOT DEFINED CMAKE_BUILD_TYPE)
	set (CMAKE_BUILD_TYPE "Release"  CACHE STRING "Choose the type of build." FORCE)
endif (NOT DEFINED CMAKE_BUILD_TYPE)

set (CMAKE_CXX_STANDARD 20)# Using C++20
set (CMAKE_CXX_EXTENSIONS OFF)
set (CMAKE_CXX_STANDARD_REQUIRED ON)
set (CMAKE_C_STANDARD 17)# Using C17
set (CMAKE_C_EXTENSIONS OFF)
set (CMAKE_C_STANDARD_REQUIRED ON)
set (CMAKE_C_FLAGS " -Wimplicit-function-declaration -Wint-conversion")

set (CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL")# Using /MD and /MDd on MSVC

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set (LAME_INSTALL_NAME ${PROJECT_NAME})

# Config Modules
set (LAME_ASM OFF)# Can't open nasm.h
set (LAME_MP3X OFF)# Can't open gtk.h
set (LAME_MMX ON)
set (LAME_MPG ON)
set (LAME_SNDFILE OFF)

# Set Source Path
set (SRC_PATH ${CMAKE_CURRENT_SOURCE_DIR}/lame-3.100)
set (SRC_INC
	${SRC_PATH}
	${SRC_PATH}/include
	${SRC_PATH}/libmp3lame
	${SRC_PATH}/mpglib
)
set (ASM_INC ${SRC_PATH}/libmp3lame/i386)

# Get Source Files
set (LAME_SRC
	${SRC_PATH}/frontend/lame_main.c
)

set (MPX_SRC
	${SRC_PATH}/frontend/gpkplotting.c
	${SRC_PATH}/frontend/gtkanal.c
	${SRC_PATH}/frontend/mp3x.c
)

set (MP3RTP_SRC
	${SRC_PATH}/frontend/rtp.c
	${SRC_PATH}/frontend/mp3rtp.c
)

set (DLL_SRC
	${SRC_PATH}/Dll/BladeMP3EncDLL.c
)

set (COMMON_SRC
	${SRC_PATH}/frontend/main.c
	${SRC_PATH}/frontend/get_audio.c
	${SRC_PATH}/frontend/parse.c
	${SRC_PATH}/frontend/timestatus.c
	${SRC_PATH}/frontend/lametime.c
	${SRC_PATH}/frontend/console.c
	${SRC_PATH}/frontend/brhist.c
)

set (LAMELIB_SRC
	${SRC_PATH}/libmp3lame/bitstream.c
	${SRC_PATH}/libmp3lame/encoder.c
	${SRC_PATH}/libmp3lame/fft.c
	${SRC_PATH}/libmp3lame/gain_analysis.c
	${SRC_PATH}/libmp3lame/id3tag.c
	${SRC_PATH}/libmp3lame/lame.c
	${SRC_PATH}/libmp3lame/newmdct.c
	${SRC_PATH}/libmp3lame/psymodel.c
	${SRC_PATH}/libmp3lame/quantize.c
	${SRC_PATH}/libmp3lame/quantize_pvt.c
	${SRC_PATH}/libmp3lame/vector/xmm_quantize_sub.c
	${SRC_PATH}/libmp3lame/set_get.c
	${SRC_PATH}/libmp3lame/vbrquantize.c
	${SRC_PATH}/libmp3lame/reservoir.c
	${SRC_PATH}/libmp3lame/tables.c
	${SRC_PATH}/libmp3lame/takehiro.c
	${SRC_PATH}/libmp3lame/util.c
	${SRC_PATH}/libmp3lame/mpglib_interface.c
	${SRC_PATH}/libmp3lame/VbrTag.c
	${SRC_PATH}/libmp3lame/presets.c
	${SRC_PATH}/libmp3lame/version.c
)

if (${LAME_MPG})
	set (MPGLIB_SRC
		${SRC_PATH}/mpglib/common.c
		${SRC_PATH}/mpglib/dct64_i386.c
		${SRC_PATH}/mpglib/decode_i386.c
		${SRC_PATH}/mpglib/layer1.c
		${SRC_PATH}/mpglib/layer2.c
		${SRC_PATH}/mpglib/layer3.c
		${SRC_PATH}/mpglib/tabinit.c
		${SRC_PATH}/mpglib/interface.c
	)
endif (${LAME_MPG})

if (${LAME_ASM})
	if (${LAME_MMX})
		set (ASM_SRC_MMX
			${SRC_PATH}/libmp3lame/i386/choose_table.nas
		)
	endif (${LAME_MMX})

	set (ASM_SRC
		${ASM_SRC_MMX}
		${SRC_PATH}/libmp3lame/i386/cpu_feat.nas
		${SRC_PATH}/libmp3lame/i386/fft3dn.nas
		${SRC_PATH}/libmp3lame/i386/fftsse.nas
	)
	set (ASM_INC ${SRC_PATH}/libmp3lame/i386)
endif (${LAME_ASM})

set (RC_SRC ${SRC_PATH}/libmp3lame/lame.rc)

set (DLL_DEF ${SRC_PATH}/include/lame.def)

configure_file (${SRC_PATH}/configFixed.h.in ${SRC_PATH}/config.h @ONLY)# MSVC

# Targets
set (ASM_SRC_TEMP "")
foreach (ASM_FILE ${ASM_SRC})
	set (ASM_FILE_OUT "${ASM_FILE}.asm")
	add_custom_command (
		OUTPUT "${ASM_FILE_OUT}"
		COMMAND ${CMAKE_COMMAND} -E copy_if_different "${ASM_FILE}" "${ASM_FILE_OUT}"
		DEPENDS "${ASM_FILE}"
		VERBATIM
	)
	list (APPEND ASM_SRC_TEMP ${ASM_FILE_OUT})
endforeach (ASM_FILE ${ASM_SRC})

add_executable (lame ${SRC_PATH}/config.h ${COMMON_SRC} ${LAME_SRC} ${RC_SRC})
if (${LAME_MP3X})
	add_executable (mp3x ${SRC_PATH}/config.h ${COMMON_SRC} ${MPX_SRC} ${RC_SRC})
endif (${LAME_MP3X})
add_executable (mp3rtp ${SRC_PATH}/config.h ${COMMON_SRC} ${MP3RTP_SRC} ${RC_SRC})
add_library (lame_enc SHARED ${SRC_PATH}/config.h ${DLL_SRC} ${RC_SRC})
add_library (mp3lame SHARED ${SRC_PATH}/config.h ${DLL_DEF} ${SRC_PATH}/libmp3lame/version.c)
add_library (mp3lame-static STATIC ${LAMELIB_SRC} ${MPGLIB_SRC})
if (${LAME_ASM})
	add_library (lame_asm STATIC ${ASM_SRC_TEMP})
endif (${LAME_ASM})

# Target Includes
foreach (ITEM ${SRC_INC})
		file (RELATIVE_PATH ITEM_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ITEM})
		target_include_directories(mp3lame PUBLIC
			"$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${ITEM_PATH}>"
			"$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${LAME_INSTALL_NAME}/${ITEM_PATH}>"
		)
		target_include_directories(mp3lame-static PUBLIC
			"$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${ITEM_PATH}>"
			"$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${LAME_INSTALL_NAME}/${ITEM_PATH}>"
		)
endforeach (ITEM ${SRC_INC})

target_include_directories (lame PRIVATE ${SRC_INC})
if (${LAME_MP3X})
	target_include_directories (mp3x PRIVATE ${SRC_INC})
endif (${LAME_MP3X})
target_include_directories (mp3rtp PRIVATE ${SRC_INC})
target_include_directories (lame_enc PRIVATE ${SRC_INC})

if (${LAME_ASM})
	target_include_directories (lame_asm PRIVATE ${ASM_INC})
endif (${LAME_ASM})

# Macros
if (${LAME_MPG})
	set (LAME_MACRO ${LAME_MACRO} "HAVE_MPGLIB")
endif (${LAME_MPG})

if (${LAME_SNDFILE})
	set (LAME_MACRO ${LAME_MACRO} "LIBSNDFILE")
endif (${LAME_SNDFILE})

set (LAME_MACRO ${LAME_MACRO} "USE_LAYER_2")# MSVC
set (LAME_MACRO ${LAME_MACRO} "HAVE_CONFIG_H")# MSVC
set (LAME_MACRO ${LAME_MACRO} "HAVE_STDINT_H")
set (LAME_MACRO ${LAME_MACRO} "TAKEHIRO_IEEE754_HACK")

if (${LAME_ASM})
	if (${LAME_MMX})
		set (LAME_MACRO ${LAME_MACRO} "MMX_choose_table")
	endif (${LAME_MMX})

	set (LAME_MACRO ${LAME_MACRO} "HAVE_NASM")
endif (${LAME_ASM})

target_compile_definitions (lame PUBLIC ${LAME_MACRO})
if (${LAME_MP3X})
	target_compile_definitions (mp3x PUBLIC ${LAME_MACRO})
endif (${LAME_MP3X})
target_compile_definitions (mp3rtp PUBLIC ${LAME_MACRO})
target_compile_definitions (lame_enc PUBLIC ${LAME_MACRO})
target_compile_definitions (mp3lame PUBLIC ${LAME_MACRO})
target_compile_definitions (mp3lame-static PUBLIC ${LAME_MACRO})

if (${LAME_ASM} AND WIN32)
	target_compile_definitions (lame_asm PUBLIC "WIN32" "WIN64")# Windows
endif (${LAME_ASM} AND WIN32)

# Compile Settings
set_target_properties (lame mp3rtp lame_enc mp3lame mp3lame-static
	PROPERTIES POSITION_INDEPENDENT_CODE ON
)
if (${LAME_MP3X})
	set_target_properties (mp3x
	PROPERTIES POSITION_INDEPENDENT_CODE ON
)
endif (${LAME_MP3X})

if (${LAME_ASM} AND MSVC)
	target_compile_options (lame_asm PRIVATE "-Sf")# MSVC
endif (${LAME_ASM} AND MSVC)

# Link Libraries
if (${LAME_SNDFILE})
	set (SNDFILE_LIB ${libsndfile})
endif (${LAME_SNDFILE})

if (WIN32)
	if (MSVC)
		set (ADDL_LIB bufferoverflowU)# Windows
	endif (MSVC)
	set (WSOCK32_LIB wsock32)# Windows
	set (USER32_LIB user32)# Windows
endif (WIN32)

target_link_libraries (lame PRIVATE mp3lame-static ${SNDFILE_LIB} ${ADDL_LIB})
if (${LAME_MP3X})
	target_link_libraries (mp3x PRIVATE mp3lame-static ${SNDFILE_LIB} ${ADDL_LIB})
endif (${LAME_MP3X})
target_link_libraries (mp3rtp PRIVATE mp3lame-static ${SNDFILE_LIB} ${ADDL_LIB} ${WSOCK32_LIB})
target_link_libraries (lame_enc PRIVATE mp3lame-static ${ADDL_LIB} ${USER32_LIB})
target_link_libraries (mp3lame PRIVATE mp3lame-static)

if (${LAME_ASM})
	target_link_libraries (mp3lame-static PRIVATE lame_asm)
endif (${LAME_ASM})

# Install
set (LAME_CMAKE_CONFIG_INSTALL_DIR ${CMAKE_INSTALL_LIBDIR}/cmake/${LAME_INSTALL_NAME})

if (LAME_VCPKG_TOOLS_HINT)
	set(TOOLS_DIR tools/${LAME_INSTALL_NAME})
else ()
	set(TOOLS_DIR ${CMAKE_INSTALL_BINDIR})
endif ()
install (TARGETS lame mp3rtp lame_enc mp3lame mp3lame-static
	EXPORT ${LAME_INSTALL_NAME}Targets
	RUNTIME DESTINATION "${TOOLS_DIR}" OPTIONAL
	LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
	ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
)
if (${LAME_MP3X})
	install (TARGETS mp3x
		EXPORT ${LAME_INSTALL_NAME}Targets
		RUNTIME DESTINATION "${TOOLS_DIR}" OPTIONAL
		LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
		ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
	)
endif (${LAME_MP3X})
if (${LAME_ASM})
	install (TARGETS lame_asm
		EXPORT ${LAME_INSTALL_NAME}Targets
		RUNTIME DESTINATION "${TOOLS_DIR}" OPTIONAL
		LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
		ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" OPTIONAL
	)
endif (${LAME_ASM})

if (MSVC)
	install (FILES $<TARGET_PDB_FILE:lame> DESTINATION "${TOOLS_DIR}" OPTIONAL)
	install (FILES $<TARGET_PDB_FILE:mp3rtp> DESTINATION "${TOOLS_DIR}" OPTIONAL)
	install (FILES $<TARGET_PDB_FILE:lame_enc> DESTINATION "${CMAKE_INSTALL_BINDIR}" OPTIONAL)
	install (FILES $<TARGET_PDB_FILE:mp3lame> DESTINATION "${CMAKE_INSTALL_BINDIR}" OPTIONAL)
	if (${LAME_MP3X})
		install (FILES $<TARGET_PDB_FILE:mp3x> DESTINATION "${TOOLS_DIR}" OPTIONAL)
	endif (${LAME_MP3X})
endif (MSVC)

foreach (ITEM ${SRC_INC})
	file (GLOB_RECURSE HDR_FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} "${ITEM}/*.h")

	foreach (HDR_FILE ${HDR_FILES})
		get_filename_component (HDR_DIR ${HDR_FILE} DIRECTORY)
		install (FILES "${CMAKE_CURRENT_SOURCE_DIR}/${HDR_FILE}" DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${LAME_INSTALL_NAME}/${HDR_DIR}" OPTIONAL)
	endforeach (HDR_FILE ${HDR_FILES})
endforeach (ITEM ${SRC_INC})

write_basic_package_version_file (
	"${CMAKE_CURRENT_BINARY_DIR}/${LAME_INSTALL_NAME}-config-version.cmake"
	VERSION ${PROJECT_VERSION}
	COMPATIBILITY AnyNewerVersion
)

configure_package_config_file (
	"${CMAKE_CURRENT_LIST_DIR}/${LAME_INSTALL_NAME}-config.cmake.in"
	"${CMAKE_CURRENT_BINARY_DIR}/${LAME_INSTALL_NAME}-config.cmake"
	INSTALL_DESTINATION ${LAME_CMAKE_CONFIG_INSTALL_DIR}
	NO_CHECK_REQUIRED_COMPONENTS_MACRO
)

install (FILES
	"${CMAKE_CURRENT_BINARY_DIR}/${LAME_INSTALL_NAME}-config.cmake"
	"${CMAKE_CURRENT_BINARY_DIR}/${LAME_INSTALL_NAME}-config-version.cmake"
	DESTINATION ${LAME_CMAKE_CONFIG_INSTALL_DIR}
)

install (EXPORT ${LAME_INSTALL_NAME}Targets
	FILE "${LAME_INSTALL_NAME}-targets.cmake"
	NAMESPACE ${LAME_INSTALL_NAME}::
	DESTINATION ${LAME_CMAKE_CONFIG_INSTALL_DIR}
)
