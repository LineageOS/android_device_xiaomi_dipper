#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/dipper/dipper-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2248
TARGET_SCREEN_WIDTH := 1080

# Device fstab
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.brcm.rc \
    init.remosaic.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sdm845-common
$(call inherit-product, device/xiaomi/sdm845-common/sdm845.mk)


# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:system/usr/idc/uinput-goodix.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:system/usr/keylayout/uinput-goodix.kl

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    com.nxp.nfc.nq.xml \
    libnqnfc-nci \
    libnqp61-jcop-kit \
    nfc_nci.nqx.default \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    SecureElement \
    Tag \
    vendor.nxp.hardware.nfc@1.1-service \
    android.hardware.secure_element@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd-NQ4XX.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-NQ4XX.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-mtp_rf2.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp_rf2.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd-NQ3XX.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-NQ3XX.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd_rf1.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd_rf1.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm_NCI2_0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm_NCI2_0.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-mtp_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp_default.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd-NQ4XX.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-NQ4XX.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd_rf2.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd_rf2.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-mtp-NQ3XX.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-NQ3XX.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-mtp_rf1.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp_rf1.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_default.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-qrd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd_default.conf


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml
