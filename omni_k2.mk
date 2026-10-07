# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k2
PRODUCT_NAME := omni_k2
PRODUCT_BRAND := kido
PRODUCT_MODEL := K2
PRODUCT_MANUFACTURER := kido

# Explicitly
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8909

# The kernel does not support aio with ffs.
PRODUCT_PROPERTY_OVERRIDES += \
	sys.usb.ffs.aio_compat=1
