DEVICE_TREE := device/lge/h910

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8996

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/jc-msm8996
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_APPEND_DTB := true
#TARGET_KERNEL_DEVICE_CONFIG := device_lge_h910
TARGET_KERNEL_CONFIG := twrp_defconfig
TARGET_KERNEL_DEVICE_DEFCONFIG := device_lge_h910

TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/Image-h910.lz4-dtb

# Boot image
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff androidboot.hardware=elsa androidboot.bootdevice=624000.ufshc androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02200000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002880000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x15D800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xD0F800000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x04D000000
BOARD_FLASH_BLOCK_SIZE := 0x40000

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
BOOTLOADER_MESSAGE_OFFSET := 128
BOARD_GLOBAL_CFLAGS := -DBOARD_RECOVERY_BLDRMSG_OFFSET=128
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true

TW_IGNORE_MISC_WIPE_DATA := true
# Shift TWRP off the secondary screen
#top
#TW_Y_OFFSET := 35

#Bottom
#TW_H_OFFSET := -35
# Lineage 14's era is mostly over, making stock right and lin15 more correct
#TW_CLOCK_OFFSET := -1451606400
#US996 offset 46 years
#H918 TW_CLOCK_OFFSET := -1385672400


# exFAT drivers no longer included in the kernel
TW_NO_EXFAT_FUSE := false

# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Encryption support
TW_INCLUDE_CRYPTO := true
# needed for Lineage encryption
TW_CRYPTO_USE_SYSTEM_VOLD := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true

#TW_DEVICE_VERSION := 0
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true
TARGET_RECOVERY_DEVICE_MODULES := zip kdzwriter strace
#TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
