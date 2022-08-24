#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Inherit from gta4xlwifi device
$(call inherit-product, device/samsung/gta4xlwifi/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2000
TARGET_SCREEN_WIDTH := 1200

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := gta4xlwifi
PRODUCT_NAME := lineage_gta4xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P610
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_GMS_CLIENTID_BASE := android-samsung
