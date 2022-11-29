# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2022 Graphene
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
ifneq ($(DERP_RELEASE),true)
    BUILD_DATE := $(shell date +%Y%m%d-%H%M)
else
    BUILD_DATE := $(shell date +%Y%m%d)
endif

TARGET_PRODUCT_SHORT := $(subst graphene_,,$(DERP_BUILDTYPE))

DERP_BUILDTYPE ?= Community
DERP_CODENAME := Tango
DERP_BUILD_VERSION := $(PLATFORM_VERSION)
DERP_VERSION := $(DERP_BUILD_VERSION)-$(DERP_BUILDTYPE)-$(DERP_CODENAME)-$(DERP_BUILD)-$(BUILD_DATE)
ROM_FINGERPRINT := Graphene/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%H%M)

ifeq ($(DERP_BUILDTYPE), CI)
    BUILD_KEYS := release-keys
endif

PRODUCT_SYSTEM_PROPERTIES += \
  ro.graphene.build.version=$(DERP_BUILD_VERSION) \
  ro.graphene.build.date=$(BUILD_DATE) \
  ro.graphene.buildtype=$(DERP_BUILDTYPE) \
  ro.graphene.fingerprint=$(ROM_FINGERPRINT) \
  ro.graphene.version=$(DERP_VERSION) \
  ro.modversion=$(DERP_VERSION)

ifneq ($(OVERRIDE_OTA_CHANNEL),)
PRODUCT_SYSTEM_PROPERTIES += \
    graphene.updater.uri=$(OVERRIDE_OTA_CHANNEL)
endif
