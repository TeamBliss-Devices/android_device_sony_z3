# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common shinano definitions
include device/sony/shinano-common/BoardConfigCommon.mk

# inherit from the proprietary version
#-include vendor/sony/z3/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D6602,d6602,D6603,d6603,D6633,d6633,D6643,d6643,D6653,d6653,D6616,d6616,D6708,d6708,z3v,Z3V,z3,Z3,leo,LEO

TARGET_SPECIFIC_HEADER_PATH += device/sony/z3/include

BOARD_HARDWARE_CLASS += device/sony/z3/cmhw

# Kernel properties
TARGET_KERNEL_CONFIG := cm_shinano_leo_defconfig
ENABLE_GRAPHITE := true

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688 # 12656259072 - 16384

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/sony/z3/sepolicy

# BlissPop Config Flags
TARGET_TC_ROM :=4.8
TARGET_TC_KERNEL :=4.9-sm
BLISSIFY :=true
BLISS_STRICT :=false
BLISS_O3 :=true
BLISS_GRAPHITE :=false
BLISS_KRAIT :=false
BLISS_PIPE :=true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
-include vendor/bliss/config/sm.mk
