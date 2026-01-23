#
# SPDX-FileCopyrightText: 2020-2026 The CipherOS Project
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := vendor/mediatek/ims

PRODUCT_SOONG_NAMESPACES += \
    vendor/mediatek/ims

# IMS
PRODUCT_PACKAGES += \
    ImsService

# IMS Properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.vilte_support=0 \
    persist.vendor.ims_support=1 \
    persist.vendor.volte_support=1

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayIms \
    TelephonyResOverlayIms

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-com.mediatek.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.mediatek.ims.xml

# SysConfigs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sysconfigs/com.mediatek.ims.config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/com.mediatek.ims.config.xml