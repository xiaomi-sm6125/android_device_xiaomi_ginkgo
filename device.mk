#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6125-common
$(call inherit-product, device/xiaomi/sm6125-common/common.mk)

DEVICE_PATH := device/xiaomi/ginkgo

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom

PRODUCT_PACKAGES += \
    init.device.rc \
    init.fingerprint.rc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/ginkgo/ginkgo-vendor.mk)
