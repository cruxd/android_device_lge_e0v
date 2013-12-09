## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := e0v

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e0v/device_e0v.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e0v
PRODUCT_NAME := cm_e0v
PRODUCT_BRAND := lge
PRODUCT_MODEL := e0v
PRODUCT_MANUFACTURER := lge
