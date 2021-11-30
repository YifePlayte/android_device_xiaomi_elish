# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARET_DIR)/product/base.mk)

# Install gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/elish/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := elish
PRODUCT_NAME := twrp_elish
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := xiaomi
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RELEASE_NAME := xiaomi
