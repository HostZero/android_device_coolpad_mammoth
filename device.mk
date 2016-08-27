#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/coolpad/mammoth

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/etc/enableswap.sh:root/enableswap.sh \
   $(LOCAL_PATH)/rootdir/etc/factory_init.rc:root/factory_init.rc \
   $(LOCAL_PATH)/rootdir/etc/factory_init.project.rc:root/factory_init.project.rc \
   $(LOCAL_PATH)/rootdir/etc/factory_init.usb.rc:root/factory_init.usb.rc \
   $(LOCAL_PATH)/rootdir/etc/fstab.mt6735:root/fstab.mt6735 \
   $(LOCAL_PATH)/rootdir/etc/init.modem.rc:root/init.modem.rc \
   $(LOCAL_PATH)/rootdir/etc/init.project.rc:root/init.project.rc \
   $(LOCAL_PATH)/rootdir/etc/init.mt6735.rc:root/init.mt6735.rc \
   $(LOCAL_PATH)/rootdir/etc/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
   $(LOCAL_PATH)/rootdir/etc/meta_init.modem.rc:root/meta_init.modem.rc \
   $(LOCAL_PATH)/rootdir/etc/meta_init.project.rc:root/meta_init.project.rc \
   $(LOCAL_PATH)/rootdir/etc/meta_init.rc:root/meta_init.rc

# Ramdisk Recovery
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6735.rc:recovery/root/init.recovery.mt6735.rc

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi xhdpi

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Bluetooth
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
   $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
   $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
   $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
   $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc \
   $(LOCAL_PATH)/configs/bluetooth/write_bt_mac.sh:system/etc/bluetooth/write_bt_mac.sh

# Wifi
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
   $(LOCAL_PATH)/configs/wifi/runbip.sh:system/etc/wifi/runbip.sh \
   $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
   $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# MDDB
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/mddb/BPLGUInfoCustomAppSrcP_MT6735_S00_MOLY_LR9_W1444_MD_LWTG_MP_V79_P7_1_lwg_n:system/etc/mddb/BPLGUInfoCustomAppSrcP_MT6735_S00_MOLY_LR9_W1444_MD_LWTG_MP_V79_P7_1_lwg_n \
   $(LOCAL_PATH)/configs/mddb/DbgInfo_LR9.W1444.MD.LWTG.MP_YL6753_65T_NJ_M0_MOLY_LR9_W1444_MD_LWTG_MP_V79_P7_2016_06_23_17_57_1_lwg_n:system/etc/mddb/DbgInfo_LR9.W1444.MD.LWTG.MP_YL6753_65T_NJ_M0_MOLY_LR9_W1444_MD_LWTG_MP_V79_P7_2016_06_23_17_57_1_lwg_n

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs_yulong.xml:system/etc/media_codecs_yulong.xml

# Common Mediatek Repository
$(call inherit-product, device/mediatek/common/common.mk)

