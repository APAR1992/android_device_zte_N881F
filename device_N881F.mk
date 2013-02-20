$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/N881F/N881F-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/N881F/overlay

LOCAL_PATH := device/zte/N881F
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Graphics
PRODUCT_PACKAGES := \
        gralloc.msm7627a \
        hwcomposer.msm7627a \
        copybit.msm7627a

# Camera
PRODUCT_PACKAGES += \
        camera.msm7627a

# Sensor
PRODUCT_PACKAGES += \
        sensors.msm7627a

# Light
PRODUCT_PACKAGES += \
        lights.msm7627a

# Audio
PRODUCT_PACKAGES += \
        audio_policy.msm7627a \
		audio.primary.msm7627a

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8
PRODUCT_NAME := full_N881F
PRODUCT_DEVICE := N881F
