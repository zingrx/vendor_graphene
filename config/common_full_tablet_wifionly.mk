# Inherit full common GrapheneOS stuff
$(call inherit-product, vendor/aosp/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include GrapheneOS LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/dictionaries
