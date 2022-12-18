# vendor_aosp
This repo is required to build GrapheneOS for unofficial devices. Make sure to add the below line in your device tree

File: aosp_$device.mk
$(call inherit-product, vendor/aosp/config/common.mk)