## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := N881F

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/N881F/device_N881F.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := N881F
PRODUCT_NAME := cm_N881F
PRODUCT_BRAND := zte
PRODUCT_MODEL := N881F
PRODUCT_MANUFACTURER := zte

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=N881F TARGET_DEVICE=N881F BUILD_FINGERPRINT=ZTE/ZTE-N881F/ZTE-N881F:4.0.4/IMM76I/eng.root.20130106.205344:user/release-keys PRIVATE_BUILD_DESC="msm7627a-user 4.0.4 IMM76I eng.root.20130106.205344 release-keys"
