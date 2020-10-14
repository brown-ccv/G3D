cmake_minimum_required (VERSION 2.6)
project (G3D)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMakeModules/")

#if(DEFINED ENV{CMAKE_INSTALL_PREFIX})
#	set(CMAKE_INSTALL_PREFIX $ENV{CMAKE_INSTALL_PREFIX})
#else()
#	set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/../G3D)
#endif()

set (CMAKE_VERBOSE_MAKEFILE TRUE)

# Used for compiling in subdirectories of the project
include_directories (
  .
  ..
  ${G3D_SOURCE_DIR}
)

# Used for finding libraries when exe's are built
#link_directories (
#  .
#)

OPTION(WITHOUT_FFMPEG "Builds without FFMPEG" OFF)

IF(WITHOUT_FFMPEG)
    ADD_DEFINITIONS(-DG3D_NO_FFMPEG)
ENDIF(WITHOUT_FFMPEG)

#Enable C++11 features in XCode
if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  set(CMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LANGUAGE_STANDARD "c++11")
  set(CMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LIBRARY "libc++")
  #set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -std=c++11 -stdlib=libc++")
endif()

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  # Mac OS X specific code
  #set (CMAKE_OSX_ARCHITECTURES "i386")
  #set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -msse3 -mfpmath=sse")
  #set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -msse3 -mfpmath=sse")
endif (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
  set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lpthread")
  set (CMAKE_CXX_FLAGS "-msse2 -msse3")
  # Linux specific code
endif (${CMAKE_SYSTEM_NAME} MATCHES "Linux")

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
  # Windows specific code
  ADD_DEFINITIONS(-D_SCL_SECURE_NO_WARNINGS)
  ADD_DEFINITIONS(-D_CRT_SECURE_NO_DEPRECATE)
  add_definitions(-DUNICODE -D_UNICODE)
endif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")


list(APPEND targets_to_install G3D GLG3D)
find_package(JPEG QUIET)
if (NOT JPEG_FOUND)
  list(APPEND targets_to_install jpeg)
  add_subdirectory (jpeg.lib)
endif()

add_subdirectory (mongoose.lib)

find_package(PNG QUIET)
if (NOT PNG_FOUND)
  list(APPEND targets_to_install png)
  add_subdirectory (png.lib)
endif()

find_package(TIFF QUIET)
if (NOT TIFF_FOUND)
  list(APPEND targets_to_install tiff)
  add_subdirectory (tiff.lib)
endif()

find_package(libzip QUIET)
if (NOT LIBZIP_FOUND)
  list(APPEND targets_to_install zip)
  add_subdirectory (zip.lib)
endif()

find_package(ZLIB QUIET)
if (NOT ZLIB_FOUND)
  list(APPEND targets_to_install zlib)
  add_subdirectory (zlib.lib)
endif()

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
  if (NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
	  install(DIRECTORY ffmpeg/lib/win32/ DESTINATION lib)
  #else (CMAKE_SIZEOF_VOID_P EQUAL 8)
	  #install(DIRECTORY ffmpeg/lib/win64/ DESTINATION lib)
  endif(NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
else()
  #Build ffmpeg if not on windows
  #Hide on Darwin, since ffmpeg doesn't want to build 64-bit
  if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
	  include(ExternalProject)
	  set(ffmpeg_PREFIX "${CMAKE_CURRENT_BINARY_DIR}/../ffmpeg")
	  set(ffmpeg_INSTALL_DIR "${CMAKE_CURRENT_BINARY_DIR}/../ffmpeg")
	  set(ffmpeg_CONFIGURE_COMMAND <SOURCE_DIR>/configure
		--enable-static --prefix=<INSTALL_DIR> --enable-network --disable-indevs --disable-outdevs --disable-bzlib --disable-ffplay --disable-ffserver --disable-ffmpeg --disable-debug)
	  set(ffmpeg_BUILD_COMMAND make)
	  if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	    set(ffmpeg_CONFIGURE_COMMAND CFLAGS="-m32" ${ffmpeg_CONFIGURE_COMMAND} --arch=x86 "--extra-cflags=-arch i686" "--extra-ldflags=-arch i686")
	    set(ffmpeg_BUILD_COMMAND CFLAGS="-m32" make)
	  endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	  ExternalProject_add(ffmpeg
			  PREFIX ${ffmpeg_PREFIX}
			  URL ${CMAKE_CURRENT_SOURCE_DIR}/ffmpeg/source/ffmpeg_source.tar.bz2
			  CONFIGURE_COMMAND ${ffmpeg_CONFIGURE_COMMAND}
	      BUILD_COMMAND ${ffmpeg_BUILD_COMMAND}
			  INSTALL_DIR ${ffmpeg_INSTALL_DIR})

  install(FILES ${ffmpeg_INSTALL_DIR}/lib/libavformat.a ${ffmpeg_INSTALL_DIR}/lib/libavcodec.a ${ffmpeg_INSTALL_DIR}/lib/libavutil.a DESTINATION lib)
  endif()
endif()

add_subdirectory (G3D.lib)
add_subdirectory (GLG3D.lib)

INSTALL(TARGETS ${targets_to_install}
   ARCHIVE DESTINATION lib
   LIBRARY DESTINATION lib
   RUNTIME DESTINATION bin
   )
