# Inherit common grapheneFest stuff
$(call inherit-product, vendor/graphene/config/common.mk)

# Inherit grapheneFest car device tree
$(call inherit-product, device/graphene/car/graphene_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
