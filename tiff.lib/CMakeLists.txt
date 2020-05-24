cmake_minimum_required(VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/mkg3states.c source/tif_aux.c source/tif_close.c source/tif_codec.c source/tif_color.c source/tif_compress.c source/tif_dir.c source/tif_dirinfo.c source/tif_dirread.c source/tif_dirwrite.c source/tif_dumpmode.c source/tif_error.c source/tif_extension.c source/tif_fax3.c source/tif_fax3sm.c source/tif_flush.c source/tif_getimage.c source/tif_jbig.c source/tif_jpeg.c source/tif_luv.c source/tif_lzw.c source/tif_next.c source/tif_ojpeg.c source/tif_open.c source/tif_packbits.c source/tif_pixarlog.c source/tif_predict.c source/tif_print.c source/tif_read.c source/tif_stream.cxx source/tif_strip.c source/tif_swab.c source/tif_thunder.c source/tif_tile.c source/tif_unix.c source/tif_version.c source/tif_warning.c source/tif_win32.c source/tif_write.c source/tif_zip.c)

set (HEADERFILES source/t4.h source/tif_config.h source/tif_config.vc.h source/tif_config.wince.h source/tif_dir.h source/tif_fax3.h source/tif_predict.h source/tiffio.h source/tiffio.hxx source/tiffiop.h source/tiffvers.h source/uvcode.h include/tiff.h include/tiffconf.h include/tiffconf.vc.h include/tiffconf.wince.h)

source_group ("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
	./source
	../zlib.lib/include
)

add_library(tiff ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
