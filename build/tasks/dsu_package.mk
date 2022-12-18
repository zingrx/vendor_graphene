# Copyright (C) 2021 StatiXOS
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

# -----------------------------------------------------------------
# Graphene DSU package

GSI_TARGETS := aosp_gsi_arm64 aosp_gsi_arm aosp_gsi_x86 aosp_gsi_x86_64

ifneq ($(filter $(TARGET_PRODUCT),$(GSI_TARGETS)),)

AOSP_TARGET_PACKAGE := $(PRODUCT_OUT)/Graphene-$(AOSP_VERSION)-dsu.zip

.PHONY: dsu_package
dsu_package: $(INSTALLED_SYSTEMIMAGE_TARGET) $(INSTALLED_VBMETAIMAGE_TARGET) $(SOONG_ZIP)
	$(hide) cd $(PRODUCT_OUT) && $(SOONG_ZIP) -o $(AOSP_TARGET_PACKAGE) -f system.img -f vbmeta.img
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Graphene DSU package ${txtrst}";
	@echo -e ""
	@echo -e ${CL_CYN}"  █████ ██▀▀██ ██████ ██████ ██  ██ ██████ ███  ██ ██████ "
	@echo -e ${CL_CYN}" ██     ██  ██ ██  ██ ██  ██ ██  ██ ██     ██ █  █ ██     "
	@echo -e ${CL_CYN}" ██  ██ ████   ██  ██ ██████ ██████ ████   ██  █ █ ████   "
	@echo -e ${CL_CYN}" ██   █ ██  ██ ██████ ██     ██  ██ ██     ██  ███ ██     "
	@echo -e ${CL_CYN}"  █████ ██  ██ ██  ██ ██     ██  ██ ██████ ██   ██ ██████ "
	@echo -e ${CL_CYN}".................................................................."
	@echo -e ${CL_CYN}"............................Graphene.............................."
	@echo -e ${CL_CYN}"......................Based on Android 13........................."
	@echo -e ${CL_RST}".................................................................."
	@echo -e ${CL_YLW}"..................Its Done........Getcha Some....................."
	@echo -e ${CL_YLW}"...................Steady Fucking Graphene ....................."
	@echo -e ""
	@echo -e "zip: "$(AOSP_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(AOSP_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(AOSP_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

endif
