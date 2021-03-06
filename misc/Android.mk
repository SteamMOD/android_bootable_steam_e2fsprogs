LOCAL_PATH := $(call my-dir)

#########################################################################
# Build mke2fs
include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os

LOCAL_SRC_FILES := \
	mke2fs.c \
	util.c \
	default_profile.c

LOCAL_C_INCLUDES := \
	bootable/steam/e2fsprogs/lib \
	bootable/steam/e2fsprogs/e2fsck

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
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H \
	-Dmain=steam_mke2fs_main

LOCAL_CFLAGS += -DNO_CHECK_BB

LOCAL_MODULE := libsteam_mke2fs
LOCAL_MODULE_TAGS := eng

LOCAL_STATIC_LIBRARIES := \
	libsteam_ext2fs \
	libsteam_ext2_blkid \
	libsteam_ext2_uuid \
	libsteam_ext2_profile \
	libsteam_ext2_com_err \
	libsteam_ext2_e2p \
	libc

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := mke2fs.conf
LOCAL_SRC_FILES := mke2fs.conf
include $(BUILD_PREBUILT)

###########################################################################
# Build tune2fs
#
include $(CLEAR_VARS)

LOCAL_CFLAGS := -Os
LOCAL_SRC_FILES := \
	tune2fs.c \
	util.c

LOCAL_C_INCLUDES := \
	bootable/steam/e2fsprogs/lib \
	bootable/steam/e2fsprogs/e2fsck

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
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H \
	-Dmain=steam_tune2fs_main

LOCAL_CFLAGS += -DNO_CHECK_BB

LOCAL_MODULE := libsteam_tune2fs
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := \
	libsteam_ext2fs \
	libsteam_ext2_com_err \
	libc

include $(BUILD_STATIC_LIBRARY)

#########################################################################
# Build badblocks
#
include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os

LOCAL_SRC_FILES := \
	badblocks.c

LOCAL_C_INCLUDES := \
	bootable/steam/e2fsprogs/lib

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
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H \
	-Dmain=steam_badblocks_main

LOCAL_MODULE := libsteam_badblocks
LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_LIBRARIES := \
	libext2fs \
	libext2_com_err \
	libc

include $(BUILD_STATIC_LIBRARY)

