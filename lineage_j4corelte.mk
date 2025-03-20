#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j4corelte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720

# Device Identifier. This must come after all inclusions.
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := j4corelte
PRODUCT_MANUFACTURER := Samsung
PRODUCT_NAME := lineage_j4corelte
PRODUCT_MODEL := Galaxy J4 Core

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j4corelteub-user 8.1.0 M1AJB J410GUBU1AUE2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/j4corelteub/j4corelte:8.1.0/M1AJB/J410GUBS1ATL1:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=samsung/j4corelteub/j4corelte:8.1.0/M1AJB/J410GUBS1ATL1:user/release-keys
