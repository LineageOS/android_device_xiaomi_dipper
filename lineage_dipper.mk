#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:9/PKQ1.180729.001/V10.3.2.0.PEAMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 9 PKQ1.180729.001 V10.3.2.0.PEAMIXM release-keys" \
    PRODUCT_NAME="dipper" \
    TARGET_DEVICE="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
