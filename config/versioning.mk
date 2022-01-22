#
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
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

PLATFORM_ALTERMIS_RELEASE := 12.1.0
PLATFORM_ALTERMIS_VERSION := $(PLATFORM_ALTERMIS_RELEASE).$(shell date +%m%d%H%M)

TARGET_PRODUCT_SHORT := $(subst altermis_,,$(TARGET_DEVICE))

ifeq ($(TARGET_BUILD_VARIANT),OFFICIAL)
    PLATFORM_ALTERMIS_VERSION := $(PLATFORM_ALTERMIS_RELEASE)
    PROD_VERSION += Project-Altermis_$(PLATFORM_ALTERMIS_VERSION)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-OFFICIAL
else
    PLATFORM_ALTERMIS_VERSION := $(PLATFORM_ALTERMIS_RELEASE)
    PROD_VERSION += Project-Altermis_$(PLATFORM_ALTERMIS_VERSION)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-UNOFFICIAL
endif


PRODUCT_PRODUCT_PROPERTIES += \
    ro.system.altermis.version=$(PLATFORM_ALTERMIS_VERSION)
