##
# Copyright (C) 2018-2020 The LineageOS Project
#
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common fluidX stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

TARGET_INCLUDE_GAPPS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# fluid Offical Stuffs.
FALCON_BUILDVERSION := OFFICIAL

PRODUCT_PRODUCT_PROPERTIES += \
    ro.fluid.maintainer=ArunGz \
    ro.fluid.cpu=SnapDragon
