#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from juice device
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common AOSPK stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.211001.001/7641976:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ3A.211001.001 7641976 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
