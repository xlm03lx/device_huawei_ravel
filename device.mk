#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, vendor/huawei/kirin970/kirin970-vendor.mk)

# Android Open Source Project Common Stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Audio
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# APN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/apns-conf.xml:system/etc/apns-conf.xml

# Codecs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/media-codec-blacklist:system/etc/media-codec-blacklist

# Device init scripts
PRODUCT_PACKAGES += \
    init.bcm43xx.rc \
    init.hisi.rc \
    init.kirin970.rc \
    init.kirin970.ab.rc \
    init.kirin970.environ.rc

# Display
PRODUCT_PACKAGES += \
    libion

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/ravel/gps/gps.conf:system/etc/gps.conf \
    device/huawei/ravel/gps/gps_debug.conf:system/etc/gps_debug.conf \

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fingerprint.kl:system/usr/keylayout/fingerprint.kl

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    device/huawei/ravel/nfc/libnfc_brcm_pra_L31.conf:system/etc/libnfc-brcm.conf \
    device/huawei/ravel/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    device/huawei/ravel/nfc/libnfc_nxp_pra_L31.conf:system/etc/libnfc-nxp.conf \
    device/huawei/ravel/nfc/nfcscc_access.xml:system/etc/nfcscc_access.xml \
    device/huawei/ravel/nfc/nfcse_access.xml:system/etc/nfcse_access.xml \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \

# Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.version.all_codenames=$(PLATFORM_VERSION_ALL_CODENAMES) \
    ro.build.version.codename=$(PLATFORM_VERSION_CODENAME) \
    ro.build.version.huawei=8.0.0 \
    ro.build.version.huawei1=8.1.0 \
    ro.build.version.release=$(PLATFORM_VERSION) \
    ro.build.version.sdk=$(PLATFORM_SDK_VERSION) \
    ro.cust.cdrom=/dev/null

# Radio
PRODUCT_PACKAGES += \
    qti-telephony-common

PRODUCT_BOOT_JARS += \
    telephony-ext

# Recovery
PRODUCT_PACKAGES += \
    resize2fs_static

# Release tools
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/releasetools.kirin970.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/releasetools.kirin970.sh

# Selinux
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sepolicy/27.0.cil:$(TARGET_COPY_OUT_SYSTEM)/etc/selinux/mapping/27.0.cil

# Shims
PRODUCT_PACKAGES += \
    libshims_hisupl \
    libshims_hwsmartdisplay_jni

# Speed up
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=verify-none

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.kirin970

# VNDK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vndk-compat/ld.config.26.txt:system/etc/ld.config.26.txt \
    $(LOCAL_PATH)/vndk-compat/llndk.libraries.26.txt:system/etc/llndk.libraries.26.txt \
    $(LOCAL_PATH)/vndk-compat/vndksp.libraries.26.txt:system/etc/vndksp.libraries.26.txt \
    $(LOCAL_PATH)/vndk-compat/ld.config.27.txt:system/etc/ld.config.27.txt

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi.hostapd@1.0 \
    android.hardware.wifi@1.2
