# Copyright (C) 2018 NEOXOS Project
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

# Versioning System
# Neox Version.
NEOX_VERSION_NUMBER := Pie

NEOX_DEVICE := $(NEOX_BUILD)

ifndef NEOX_BUILD_TYPE
    NEOX_BUILD_TYPE := UNOFFICIAL

PRODUCT_PROPERTY_OVERRIDES += \
    ro.neox.buildtype=unofficial
endif

ifeq ($(NEOX_BUILD_TYPE), OFFICIAL)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.neox.ota.version=$(NEOX_VERSION) \
    ro.ota.build.date=$(shell date +%Y%m%d)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.neox.buildtype=official
endif

# Set all versions
NEOX_VERSION := NeoxROM-$(NEOX_VERSION_NUMBER)-$(NEOX_DEVICE)-$(shell date +"%Y%m%d")-$(NEOX_BUILD_TYPE)
NEOX_DISPLAY_VERSION := $(NEOX_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    neox.ota.version=$(NEOX_VERSION) \
    ro.modversion=$(NEOX_VERSION_NUMBER) \
    ro.neox.display.version=$(NEOX_VERSION) \
    ro.neox.version=$(NEOX_VERSION)

