# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Define time zone data path
ifneq ($(wildcard bionic/libc/zoneinfo),)
    TZDATAPATH := bionic/libc/zoneinfo
else ifneq ($(wildcard system/timezone),)
    TZDATAPATH := system/timezone/output_data/iana
endif

# Time Zone data for Recovery
ifdef TZDATAPATH
PRODUCT_COPY_FILES += \
    $(TZDATAPATH)/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
endif

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := $(CUSTOM_VENDOR)_$(PRODUCT_DEVICE)
PRODUCT_MODEL := LG-$(shell echo $(PRODUCT_DEVICE) | tr a-z A-Z)
PRODUCT_MANUFACTURER := $(shell echo $(PRODUCT_BRAND) | tr a-z A-Z)
