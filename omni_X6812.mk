#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from X6812 device
$(call inherit-product, device/infinix/X6812/device.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X6812
PRODUCT_NAME := omni_X6812
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix HOT 11S
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC ="vnd_x6812_h6912-user 11 RP1A.200720.011 278761 release-keys"

BUILD_FINGERPRINT := Infinix/X6812-GL/Infinix-X6812:11/RP1A.200720.011/220416V586:user/release-keys