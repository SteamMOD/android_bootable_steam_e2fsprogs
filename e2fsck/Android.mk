LOCAL_PATH := $(call my-dir)

#########################
# Build the libext2 profile library

include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os
LOCAL_SRC_FILES :=  \
	prof_err.c \
	profile.c

LOCAL_MODULE := libsteam_ext2_profile
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := \
	libsteam_ext2_com_err \
	libc

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
	-DHAVE_TYPE_SSIZE_T

LOCAL_PRELINK_MODULE := false

include $(BUILD_STATIC_LIBRARY)


#########################
# Build the e2fsck binary

include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os
LOCAL_SRC_FILES :=  \
	e2fsck.c \
	crc32.c \
	dict.c \
	super.c \
	pass1.c \
	pass1b.c \
	pass2.c \
	pass3.c \
	pass4.c \
	pass5.c \
	journal.c \
	recovery.c \
	revoke.c \
	badblocks.c \
	util.c \
	unix.c \
	dirinfo.c \
	dx_dirinfo.c \
	ehandler.c \
	problem.c \
	message.c \
	ea_refcount.c \
	rehash.c \
	region.c

LOCAL_MODULE := libsteam_e2fsck
LOCAL_MODULE_TAGS := eng

LOCAL_STATIC_LIBRARIES := \
	libsteam_ext2fs \
	libsteam_ext2_blkid \
	libsteam_ext2_uuid \
	libsteam_ext2_profile \
	libsteam_ext2_com_err \
	libsteam_ext2_e2p \
	libc

LOCAL_C_INCLUDES := bootable/steam/e2fsprogs/lib

LOCAL_CFLAGS := -Os -g -W -Wall \
	-DHAVE_DIRENT_H \
	-DHAVE_ERRNO_H \
	-DHAVE_INTTYPES_H \
	-DHAVE_LINUX_FD_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SETJMP_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_UNISTD_H \
	-DHAVE_UTIME_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_INTPTR_T \
	-DENABLE_HTREE=1 \
	-Dmain=steam_e2fsck_main

include $(BUILD_STATIC_LIBRARY)

