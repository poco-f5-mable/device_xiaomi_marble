#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common RisingOS configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := marble
PRODUCT_MODEL := 23049PCD8G
PRODUCT_NAME := lineage_marble
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

# RisingOS
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon® 7+ Gen 2" \
    RISING_MAINTAINER="Phoenix241"

# Sign Builds
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/xiaomi/priv-keys/releasekey

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 14 UKQ1.230804.001 V816.0.3.0.UMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.3.0.UMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
