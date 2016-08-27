# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, device/coolpad/mammoth/full_mammoth.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0.1/MOB30Z/46f5166537:userdebug/test-keys PRIVATE_BUILD_DESC="mammoth-user 6.0.1 MOB30Z 46f5166537 release-keys"

PRODUCT_NAME := cm_mammoth
BOARD_VENDOR := coolpad
PRODUCT_DEVICE := mammoth

PRODUCT_MANUFACTURER := Wileyfox
PRODUCT_MODEL := Note 3 Lite

PRODUCT_BRAND := Coolpad
TARGET_VENDOR := coolpad
TARGET_VENDOR_PRODUCT_NAME := Note 3 Lite
TARGET_VENDOR_DEVICE_NAME := mammoth
