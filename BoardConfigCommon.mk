#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := oneplus
DEVICE_PATH_COMMON := device/oneplus/sm8150-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm8150
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 androidboot.usbcontroller=a600000.dwc3
#BOARD_KERNEL_CMDLINE += skip_override androidboot.fastboot=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_ROOT_EXTRA_FOLDERS := odm op1 op2
BOARD_ROOT_EXTRA_SYMLINKS := /vendor/dsp:/dsp /vendor/firmware_mnt:/firmware /vendor/bt_firmware:/bt_firmware /mnt/vendor/persist:/persist
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image-dtb
TARGET_KERNEL_SOURCE := kernel/oneplus/sm8150
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_USE_SDCLANG := true
BOARD_KERNEL_SEPARATED_DTBO := true

# Partitions
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_NO_RECOVERY := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

TARGET_COPY_OUT_VENDOR := vendor

# Metadata
BOARD_USES_METADATA_PARTITION := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

# Platform
TARGET_BOARD_PLATFORM := msmnile
TARGET_BOARD_PLATFORM_GPU := qcom-adreno640
TARGET_USES_HARDWARE_QCOM_BOOTCTRL := true
QCOM_BOARD_PLATFORMS += msmnile
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
TARGET_USE_QTI_BT_STACK := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger Mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# CNE and DPM
BOARD_USES_QCNE := true

# Dexopt
WITH_DEXPREOPT ?= true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH_COMMON)/config.fs

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
GNSS_HIDL_VERSION := 1.1

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_RIL_VARIANT := caf
ENABLE_VENDOR_RIL_SERVICE := true

# Sepolicy: TBD

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Treble
BOARD_VNDK_VERSION := current
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# System.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH_COMMON)/system.prop
VENDOR_SECURITY_PATCH := 2018-08-05

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH_COMMON)/framework_compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH_COMMON)/framework_manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH_COMMON)/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH_COMMON)/manifest.xml

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH_COMMON)/sepolicy/private
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/qcom/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/qcom/sepolicy/public

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# AOSCP hardware
JAVA_SOURCE_OVERLAYS := \
    hardware.aoscp.controllers|$(DEVICE_PATH_COMMON)/devicehw|**/*.java
