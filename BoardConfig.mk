#
# Copyright (C) 2016 The CyanogenMod Project
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

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/yu/lettuce/board/*.mk

# inherit from proprietary files
-include vendor/yu/lettuce/BoardConfigVendor.mk

ifneq ($(HOST_OS),darwin)

SDCLANG := true

SDCLANG_PATH := prebuilts/clang/linux-x86/host/sdclang-3.8/bin

SDCLANG_LTO_DEFS := device/qcom/common/sdllvm-lto-defs.mk

endif
