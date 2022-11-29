# Inherit common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common_mobile.mk)

PRODUCT_SIZE := full

# Overlays
include vendor/graphene/overlay/overlays.mk
