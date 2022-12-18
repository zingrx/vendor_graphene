# Inherit common GrapheneOS stuff
$(call inherit-product, vendor/aosp/config/common_mobile.mk)

PRODUCT_SIZE := full

# Overlays
include vendor/aosp/overlay/overlays.mk
