# Copyright (C) 2014 The CyanogenMod Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/validus/config/nfc_enhanced.mk)

$(call inherit-product, device/sony/z3/full_z3.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D6603
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D6603/D6603:4.4.4/23.0.A.2.93/ovf_Rw:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6603-user 4.4.4 23.0.A.2.93 ovf_Rw release-keys"

PRODUCT_NAME := validus_z3
PRODUCT_DEVICE := z3
