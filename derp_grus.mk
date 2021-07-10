#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/grus/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)


# All components inherited here go to system_ext image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Some DerpFest stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
DERP_BUILDTYPE := Official
EXTRA_FOD_ANIMATIONS := true
TARGET_INCLUDE_STOCK_ARCORE := true
