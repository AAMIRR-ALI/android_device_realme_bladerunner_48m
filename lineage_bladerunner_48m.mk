#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common EvolutionX stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# risingOS Stuffs
RISING_BUILDTYPE := OFFICIAL
RISING_MAINTAINER := AAMIRR_ALI
RISING_CHIPSET := SDM865-5G
RISING_DEVICE := Bladerunner
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

TARGET_BUILD_APERTURE_CAMERA := true


# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Compiler will only build GMS playstore services, its dependencies, and Gboard app.
# package type will change from PIXEL/GMS -> CORE
TARGET_CORE_GMS := true

# Package Type
RISING_PACKAGE_TYPE := Gapps

# Wether to use google (true) or AOSP (false) telephony package bundle. (defaults: false for gms core, true for pixel builds)
TARGET_USE_GOOGLE_TELEPHONY := false

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_bladerunner_48m
PRODUCT_DEVICE := bladerunner_48m
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2072
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX2072
PRODUCT_SYSTEM_DEVICE := RMX2072CN

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
