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

DEVICE_PATH := device/huawei/ravel

# Platform
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_NO_KERNEL := false
TARGET_PREBUILT_KERNEL := /dev/null
BOARD_AVB_ENABLE := false

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
#BOARD_USES_ALSA_AUDIO := true
#USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_CAMERA_NEEDS_ADD_STATES_IN_ENUMERATE := true

# Display
TARGET_USES_HWC2 := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2080000U

# Radio
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

#BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3707764736
#BOARD_VENDORIMAGE_PARTITION_SIZE := 783286272
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 10307921510
#TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
#TARGET_USES_MKE2FS := true
#TARGET_COPY_OUT_VENDOR := vendor

# Treble
#BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
#PRODUCT_FULL_TREBLE_OVERRIDE := true
#PRODUCT_VENDOR_MOVE_ENABLED := true

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.kirin970

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Ril
#ENABLE_VENDOR_RIL_SERVICE := true

# Root
BOARD_ROOT_EXTRA_FOLDERS := \
    cust \
    hw_odm \
    modem_log \
    sec_storage \
    splash2 \
    version

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
SELINUX_IGNORE_NEVERALLOWS := true

#BOARD_SEPOLICY_DIRS += \
#    $(DEVICE_PATH)/sepolicy_tmp

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/bin/hw/vendor.huawei.hardware.hisupl@1.0-service|libshims_hisupl.so

-include vendor/huawei/ravel/BoardConfigVendor.mk

# LLVN
TARGET_USE_SDCLANG := true
