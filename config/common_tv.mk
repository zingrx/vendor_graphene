# Inherit common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common.mk)

# Inherit grapheneFest atv device tree
$(call inherit-product, device/graphene/atv/graphene_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/graphene/overlay/tv
