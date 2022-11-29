# Set grapheneFest specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common_mini_phone.mk)
