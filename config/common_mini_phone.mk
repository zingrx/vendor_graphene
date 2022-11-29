# Inherit mini common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/graphene/config/telephony.mk)
