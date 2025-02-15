#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/redbull/device-lineage.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/redfin/overlay-lineage

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device-V2-ndk.vendor:64 \
    android.hardware.camera.provider-V2-ndk.vendor:64

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlay

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi-V2-ndk.vendor:64

# wireless_charger HAL service
include device/google/redfin/wireless_charger/wireless_charger.mk
