cmake_minimum_required (VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/adler32.c source/compress.c source/crc32.c source/deflate.c source/gzclose.c source/gzlib.c source/gzread.c source/gzwrite.c source/infback.c source/inffast.c source/inflate.c source/inftrees.c source/trees.c source/uncompr.c source/zutil.c)

set (HEADERFILES source/crc32.h source/deflate.h source/gzguts.h source/inffast.c source/inffixed.h source/inflate.h source/inftrees.h source/trees.h source/zutil.h include/zconf.h include/zlib.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./source
	./include
)

add_library(zlib ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
