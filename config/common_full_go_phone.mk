# Set grapheneFest specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common_full_phone.mk)
