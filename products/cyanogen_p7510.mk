$(call inherit-product, device/samsung/p7510/device_p7510.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_p7510
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p7510
PRODUCT_MODEL := p7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p7510 BUILD_ID=HRI83 BUILD_DISPLAY_ID=HRI83.313 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:3.0.1/HRI83/313:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.0.1 HRI83 313 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Harmony
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-Harmony
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-Harmony-KANG
    endif
endif
