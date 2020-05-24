cmake_minimum_required(VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/png.c source/pngerror.c source/pngget.c source/pngmem.c source/pngpread.c source/pngpriv.h source/pngread.c source/pngrio.c source/pngrtran.c source/pngrutil.c source/pngset.c source/pngtrans.c source/pngwio.c source/pngwrite.c source/pngwtran.c source/pngwutil.c)

set (HEADERFILES include/png.h include/pngconf.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
	../zlib.lib/include
)

add_library(png ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
