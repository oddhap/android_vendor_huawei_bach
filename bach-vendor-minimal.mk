# Minimal vendor blob surface for Bach Android 16 first boot.

PRODUCT_SOONG_NAMESPACES += \
    vendor/huawei/bach

# Firmware needed by display/touch/GPU-adjacent bring-up.
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/huawei/bach/firmware/vendor/,vendor/)

# Keep graphics firmware/libs available without enabling legacy display HALs.
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/huawei/bach/gpu/vendor/,vendor/)

# Huawei calibration, keylayout, and low-level helper blobs used by the baseline.
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/huawei/bach/huawei/vendor/,vendor/)
