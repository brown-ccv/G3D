cmake_minimum_required (VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/mongoose.c)
set (HEADERFILES include/mongoose.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
)

add_library(mongoose ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
