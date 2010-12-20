LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os

LOCAL_SRC_FILES := \
	extent.c \
	resize2fs.c \
	main.c \
	online.c \
	sim_progress.c

LOCAL_C_INCLUDES := bootable/steam/e2fsprogs/lib

LOCAL_CFLAGS := -Os -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-Dmain=steam_resize2fs_main


LOCAL_MODULE := libsteam_resize2fs
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := libsteam_ext2fs libsteam_ext2_com_err libsteam_ext2_e2p libc


include $(BUILD_STATIC_LIBRARY)
