# Inherit full common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include grapheneFest LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/graphene/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/graphene/config/telephony.mk)
