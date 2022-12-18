# Inherit common GrapheneOS stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GrapheneOS atv device tree
$(call inherit-product, device/aosp/atv/aosp_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/tv
