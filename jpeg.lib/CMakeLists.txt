cmake_minimum_required(VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/jcapimin.c source/jcapistd.c source/jccoefct.c source/jccolor.c source/jcdctmgr.c source/jchuff.c source/jcinit.c source/jcmainct.c source/jcmarker.c source/jcmaster.c source/jcomapi.c source/jcparam.c source/jcphuff.c source/jcprepct.c source/jcsample.c source/jctrans.c source/jdapimin.c source/jdapistd.c source/jdatadst.c source/jdatasrc.c source/jdcoefct.c source/jdcolor.c source/jddctmgr.c source/jdhuff.c source/jdinput.c source/jdmainct.c source/jdmarker.c source/jdmaster.c source/jdmerge.c source/jdphuff.c source/jdpostct.c source/jdsample.c source/jdtrans.c source/jerror.c source/jfdctflt.c source/jfdctfst.c source/jfdctint.c source/jidctflt.c source/jidctfst.c source/jidctint.c source/jidctred.c source/jmemansi.c source/jmemmgr.c source/jquant1.c source/jquant2.c source/jutils.c)

set (HEADERFILES include/cderror.h include/cdjpeg.h include/jchuff.h include/jconfig.h include/jconfig-osx.h include/jconfig-win.h include/jdct.h include/jdhuff.h include/jerror.h include/jinclude.h include/jmemsys.h include/jmorecfg.h include/jpegint.h include/jpeglib.h include/jversion.h include/transupp.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
)

add_library(jpeg ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
