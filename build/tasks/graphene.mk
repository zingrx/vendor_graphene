AOSP_TARGET_PACKAGE := $(PRODUCT_OUT)/Graphene-$(AOSP_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: aosp bacon
aosp: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(AOSP_TARGET_PACKAGE)
	$(hide) $(SHA256) $(AOSP_TARGET_PACKAGE) | cut -d ' ' -f1 > $(AOSP_TARGET_PACKAGE).sha256sum
	$(hide) ./vendor/aosp/tools/generate_json_build_info.sh $(AOSP_TARGET_PACKAGE)
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Graphene ${txtrst}";
	@echo -e ""
	@echo -e ${CL_CYN}"   ████  ██▀██    ██▓███   █████ ▒█   █   █████  █▓   █  █████ 
	@echo -e ${CL_CYN}"▒██▀     ██ ▒██▒ ██░  ██   █   ▒█  █   █ ▒ █    ▒  █ █ █▒ ▓▒"
	@echo -e ${CL_CYN}"░██   █▌ ███      ██ ░ ██   █████ ▒████ ░ ███   ░ █ █ █  ███ ▒░"
	@echo -e ${CL_CYN}"░▓█▄   ▌▒█  ██    ██▄▄██    █▓▒ ▒░ █▒  █░ █     ▒ █  ██▒░█ ░ "
	@echo -e ${CL_CYN}"░▒████▓ ░█▒░██   ██▒▒██▒   █░    ░█   █▒▒█████▒▒█  ██▒ █████░ "
	@echo -e ${CL_CYN}" ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░░▒ ░      ░       ░ ░  ░░ ░▒  ░ ░    ░    "
	@echo -e ${CL_CYN}" ░ ░  ░    ░     ░░   ░ ░░        ░ ░       ░   ░  ░  ░    ░      "
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

bacon: aosp
