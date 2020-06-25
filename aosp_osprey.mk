# Copyright (C) 2015-2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from osprey device
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := osprey
PRODUCT_NAME := aosp_osprey
PRODUCT_MODEL := MotoG3
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := osprey

BUILD_FINGERPRINT := "motorola/osprey_retus/osprey_umts:6.0/MPI24.65-25.1/1:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=osprey \
    TARGET_DEVICE="osprey"
    PRIVATE_BUILD_DESC="osprey_retus-user 6.0 MPI24.65-25.1 1 release-keys"

