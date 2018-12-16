# Inherit full common Lineage stuff
$(call inherit-product, vendor/neox/config/common_full.mk)

PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/neox/overlay/tv
