DEVICE_PATH := device/lge/h910

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8996

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_FORCE_PREBUILT_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/$(BOARD_KERNEL_IMAGE_NAME)

# Boot image
BOARD_KERNEL_CMDLINE := user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff
BOARD_KERNEL_CMDLINE += androidboot.hardware=elsa androidboot.bootdevice=624000.ufshc androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
# Same as defaults it seems
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --second_offset 0x00f00000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_CACHEIMAGE_PARTITION_SIZE := 1288490180
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5863636992
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24897388544
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_OTA_ASSERT_DEVICE := v20,elsa,h910
BOOTLOADER_MESSAGE_OFFSET := 128
BOARD_GLOBAL_CFLAGS := -DBOARD_RECOVERY_BLDRMSG_OFFSET=128
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 85
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_TWRPAPP := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# Ignore LG's bootloader wipe commands
TW_IGNORE_MISC_WIPE_DATA := true

# << JUST ADD A BUNCH TO CHECK OUT LATER >>
# Encryption support
# TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
# TARGET_HW_DISK_ENCRYPTION := true
# TARGET_KEYMASTER_WAIT_FOR_QSEE := true
# TW_INCLUDE_CRYPTO := true
# TW_CRYPTO_USE_SYSTEM_VOLD := true
# TW_INCLUDE_CRYPTO_FBE := true
# TW_INCLUDE_FBE := true
# BOARD_USES_QCOM_DECRYPTION := true
# BOARD_USES_QCOM_FBE_DECRYPTION := true

# SkyHawk Recovery
SHRP_PATH := $(DEVICE_PATH)
SHRP_MAINTAINER := stendro
SHRP_DEVICE_CODE := H910
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
# SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FLASH_MAX_BRIGHTNESS := 400
SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_REC_TYPE := Normal
SHRP_DEVICE_TYPE := A-Only
# Padding, for rounded corner screens
# SHRP_STATUSBAR_RIGHT_PADDING := 48
# SHRP_STATUSBAR_LEFT_PADDING := 48
SHRP_OFFICIAL := false
# SHRP_EXPRESS_USE_DATA := true
# SHRP_EXPRESS := true
# Using custom theme
# SHRP_DARK := true

# Shift TWRP off the secondary screen
# Top
#TW_Y_OFFSET := 35
# Bottom
#TW_H_OFFSET := -35

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
#TW_DEVICE_VERSION := 0
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true
#TARGET_RECOVERY_DEVICE_MODULES := zip kdzwriter strace
#TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
