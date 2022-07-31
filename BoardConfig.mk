# Device path
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(TARGET_DEVICE)

# Setup lge
include device/$(PRODUCT_BRAND)/common/lge/setup.txt

# Copy lge files
include device/$(PRODUCT_BRAND)/common/lge/copy.txt

# Common boardconfig
include device/$(PRODUCT_BRAND)/common/BoardConfigCommon.mk
