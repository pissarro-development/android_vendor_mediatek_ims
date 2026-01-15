#
# SPDX-FileCopyrightText: 2020-2026 The CipherOS Project
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

IMS_PATH := vendor/mediatek/ims

PRODUCT_SOONG_NAMESPACES += \
    vendor/mediatek/ims

# IMS
PRODUCT_PACKAGES += \
    ImsService

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayIms \
    TelephonyResOverlayIms

# Permissions
PRODUCT_COPY_FILES += \
    $(IMS_PATH)/configs/permissions/privapp-permissions-com.mediatek.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.mediatek.ims.xml

# Properties
TARGET_SYSTEM_PROP += \
    $(IMS_PATH)/configs/properties/system.prop

TARGET_VENDOR_PROP += \
    $(IMS_PATH)/configs/properties/vendor.prop

# SysConfigs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sysconfigs/com.mediatek.ims.config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/com.mediatek.ims.config.xml