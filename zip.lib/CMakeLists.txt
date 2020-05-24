cmake_minimum_required (VERSION 2.6)
set (CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/mkstemp.c source/zip_add.c source/zip_add_dir.c source/zip_close.c source/zip_delete.c source/zip_dirent.c source/zip_entry_free.c source/zip_entry_new.c source/zip_err_str.c source/zip_error.c source/zip_error_clear.c source/zip_error_get.c source/zip_error_get_sys_type.c source/zip_error_strerror.c source/zip_error_to_str.c source/zip_fclose.c source/zip_file_error_clear.c source/zip_file_error_get.c source/zip_file_get_offset.c source/zip_file_strerror.c source/zip_filerange_crc.c source/zip_fopen.c source/zip_fopen_index.c source/zip_fread.c source/zip_free.c source/zip_get_archive_comment.c source/zip_get_archive_flag.c source/zip_get_file_comment.c source/zip_get_name.c source/zip_get_num_files.c source/zip_memdup.c source/zip_name_locate.c source/zip_new.c source/zip_open.c source/zip_rename.c source/zip_replace.c source/zip_set_archive_comment.c source/zip_set_archive_flag.c source/zip_set_file_comment.c source/zip_set_name.c source/zip_source_buffer.c source/zip_source_file.c source/zip_source_filep.c source/zip_source_free.c source/zip_source_function.c source/zip_source_zip.c source/zip_stat.c source/zip_stat_index.c source/zip_stat_init.c source/zip_strerror.c source/zip_unchange.c source/zip_unchange_all.c source/zip_unchange_archive.c source/zip_unchange_data.c)

set (HEADERFILES source/config.h source/zipint.h include/zip.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
	./source
	../zlib.lib/include
)

add_library(zip ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/ DESTINATION include/)
