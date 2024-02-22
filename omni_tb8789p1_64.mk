#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tb8789p1_64 device
$(call inherit-product, device/motorola/tb8789p1_64/device.mk)

PRODUCT_DEVICE := tb8789p1_64
PRODUCT_NAME := omni_tb8789p1_64
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := moto tab g70 LTE
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8789p1_64-user 12 SP1A.210812.016 g70_LTE_S200139_230411_ROW release-keys"

BUILD_FINGERPRINT := Motorola/mototabg70LTE/mototabg70LTE:12/SP1A.210812.016/g70_LTE_S200139_230411_ROW:user/release-keys
