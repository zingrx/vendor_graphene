# Inherit common mobile GrapheneFest stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Aperture \
    Eleven

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3
else
PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Customizations
PRODUCT_PACKAGES += \
    DisplayCutoutEmulationNarrowOverlay \
    DisplayCutoutEmulationWideOverlay \
    NoCutoutOverlay \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
