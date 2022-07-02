#
# Copyright (C) 2022 Project-Altermis
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

# Inherit from our versioning
$(call inherit-product, vendor/altermis/config/versioning.mk)

# Inherit from our overlay
$(call inherit-product, vendor/altermis/config/overlay.mk)

# Kernel
include vendor/altermis/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/altermis/config/BoardConfigQcom.mk
endif

# Soong
include vendor/altermis/config/BoardConfigSoong.mk

# Screen resolution
TARGET_SCREEN_WIDTH ?= 1080
TARGET_SCREEN_HEIGHT ?= 1920
