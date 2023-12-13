cmake_minimum_required (VERSION 3.15)
project (lame VERSION 1.0.0 LANGUAGES CXX C ASM_MASM)

if (NOT DEFINED CMAKE_BUILD_TYPE)
	set (CMAKE_BUILD_TYPE "Release"  CACHE STRING "Choose the type of build." FORCE)
endif (NOT DEFINED CMAKE_BUILD_TYPE)

set (CMAKE_CXX_STANDARD 20)# Using C++20
set (CMAKE_CXX_EXTENSIONS OFF)
set (CMAKE_CXX_STANDARD_REQUIRED ON)
set (CMAKE_C_STANDARD 17)# Using C17
set (CMAKE_C_EXTENSIONS OFF)
set (CMAKE_C_STANDARD_REQUIRED ON)

set (CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL")# Using /MD and /MDd on MSVC

# Config Modules
set (LAME_ASM OFF)# Can't open nasm.h
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
	${SRC_PATH}/dll/BladeMP3EncDll.c
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

configure_file (${SRC_PATH}/configMS.h ${SRC_PATH}/config.h @ONLY)# MSVC

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
add_executable (mp3x ${SRC_PATH}/config.h ${COMMON_SRC} ${MPX_SRC} ${RC_SRC})
add_executable (mp3rtp ${SRC_PATH}/config.h ${COMMON_SRC} ${MP3RTP_SRC} ${RC_SRC})
add_library (lame_enc SHARED ${SRC_PATH}/config.h ${DLL_SRC} ${RC_SRC})
add_library (libmp3lame SHARED ${SRC_PATH}/config.h ${DLL_DEF} ${SRC_PATH}/libmp3lame/version.c)
add_library (libmp3lame-static STATIC ${LAMELIB_SRC} ${MPGLIB_SRC})
if (${LAME_ASM})
	add_library (lame_asm STATIC ${ASM_SRC_TEMP})
endif (${LAME_ASM})

# Target Includes
target_include_directories (lame PRIVATE ${SRC_INC})
target_include_directories (mp3x PRIVATE ${SRC_INC})
target_include_directories (mp3rtp PRIVATE ${SRC_INC})
target_include_directories (lame_enc PRIVATE ${SRC_INC})
target_include_directories (libmp3lame PRIVATE ${SRC_INC})
target_include_directories (libmp3lame-static PRIVATE ${SRC_INC})

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

target_compile_definitions (lame PRIVATE ${LAME_MACRO})
target_compile_definitions (mp3x PRIVATE ${LAME_MACRO})
target_compile_definitions (mp3rtp PRIVATE ${LAME_MACRO})
target_compile_definitions (lame_enc PRIVATE ${LAME_MACRO})
target_compile_definitions (libmp3lame PRIVATE ${LAME_MACRO})
target_compile_definitions (libmp3lame-static PRIVATE ${LAME_MACRO})

if (${LAME_ASM})
	target_compile_definitions (lame_asm PRIVATE "WIN32" "WIN64")# Windows
endif (${LAME_ASM})

# Compile Settings
set_target_properties (lame mp3x mp3rtp lame_enc libmp3lame libmp3lame-static
	PROPERTIES POSITION_INDEPENDENT_CODE ON
)

if (${LAME_ASM})
	target_compile_options (lame_asm PRIVATE "-Sf")# MSVC
endif (${LAME_ASM})

# Link Libraries
if (${LAME_SNDFILE})
	set (SNDFILE_LIB ${libsndfile})
endif (${LAME_SNDFILE})

set (ADDL_LIB bufferoverflowU)# Windows
set (WSOCK32_LIB wsock32)# Windows
set (USER32_LIB user32)# Windows

target_link_libraries (lame PRIVATE libmp3lame-static ${SNDFILE_LIB} ${ADDL_LIB})
target_link_libraries (mp3x PRIVATE libmp3lame-static ${SNDFILE_LIB} ${ADDL_LIB})
target_link_libraries (mp3rtp PRIVATE libmp3lame-static ${SNDFILE_LIB} ${ADDL_LIB} ${WSOCK32_LIB})
target_link_libraries (lame_enc PRIVATE libmp3lame-static ${ADDL_LIB} ${USER32_LIB})
target_link_libraries (libmp3lame PRIVATE libmp3lame-static)

if (${LAME_ASM})
	target_link_libraries (libmp3lame-static PRIVATE lame_asm)
endif (${LAME_ASM})

# Output Path
if (DEFINED LAME_OUTPUT)
	set_target_properties(lame mp3x mp3rtp lame_enc libmp3lame libmp3lame-static
		PROPERTIES
		ARCHIVE_OUTPUT_DIRECTORY "${LAME_OUTPUT}"
		LIBRARY_OUTPUT_DIRECTORY "${LAME_OUTPUT}"
		RUNTIME_OUTPUT_DIRECTORY "${LAME_OUTPUT}"
	)
endif (DEFINED LAME_OUTPUT)