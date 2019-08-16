#
# Product-specific compile-time definitions.
#

include device/fsl/imx5x/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := SMD

BOARD_SOC_CLASS := IMX5X
BOARD_SOC_TYPE := IMX53
PRODUCT_MODEL := IMX53-SMD

TARGET_RECOVERY_FSTAB = device/fsl/imx53_smd/fstab.freescale

# UNITE is a virtual device support both atheros and realtek wifi(ar6103 and rtl8723as)
BOARD_WLAN_DEVICE            := UNITE
WPA_SUPPLICANT_VERSION       := VER_0_8_UNITE
#TARGET_KERNEL_MODULES        := \
                                kernel_imx/drivers/net/wireless/rtl8723as/8723as.ko:system/lib/modules/8723as.ko \
                                kernel_imx/net/wireless/cfg80211.ko:system/lib/modules/cfg80211_realtek.ko
BOARD_WPA_SUPPLICANT_DRIVER  := NL80211
BOARD_HOSTAPD_DRIVER         := NL80211

BOARD_HOSTAPD_PRIVATE_LIB_QCOM              := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_QCOM       := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_PRIVATE_LIB_RTL               := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_RTL        := lib_driver_cmd_rtl
#for intel vendor
ifeq ($(BOARD_WLAN_VENDOR),INTEL)
BOARD_HOSTAPD_PRIVATE_LIB                ?= private_lib_driver_cmd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB         ?= private_lib_driver_cmd
WPA_SUPPLICANT_VERSION                   := VER_0_8_X
HOSTAPD_VERSION                          := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB         := private_lib_driver_cmd_intel
WIFI_DRIVER_MODULE_PATH                  := "/system/lib/modules/iwlagn.ko"
WIFI_DRIVER_MODULE_NAME                  := "iwlagn"
WIFI_DRIVER_MODULE_PATH                  ?= auto
endif

BOARD_HAVE_VPU := true
HAVE_FSL_IMX_GPU2D := true
HAVE_FSL_IMX_GPU3D := true
HAVE_FSL_IMX_IPU := true
BOARD_MODEM_VENDOR := AMAZON

USE_ATHR_GPS_HARDWARE := true
USE_QEMU_GPS_HARDWARE := false

#for accelerator sensor, need to define sensor type here
BOARD_HAS_SENSOR := true
SENSOR_MMA8451 := true

# for recovery service
TARGET_SELECT_KEY := 28
TARGET_USERIMAGES_USE_EXT4 := true

# atheros 3k BT
BOARD_USE_AR3K_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/fsl/imx53_smd/bluetooth

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/fsl-proprietary/gpu/egl/egl.cfg

# Kernel
BOARD_KERNEL_CMDLINE := console=ttymxc0,115200 init=/init androidboot.console=ttymxc0 androidboot.hardware=freescale video=mxcfb0:dev=ldb,LDB-XGA,if=RGB666,bpp=32 video=mxcfb1:dev=sii902x_hdmi,1280x720M@60,bpp=32 ion=128M,64M fbmem=10M gpu_memory=128M vmalloc=576M
BOARD_KERNEL_BASE := 0x70800000
TARGET_KERNEL_SOURCE := kernel/fsl/imx
TARGET_KERNEL_CONFIG := imx5_android_defconfig
BOARD_KERNEL_IMAGE_NAME := uImage

# Use custom kernel building toolchain instead of Omni-provided one
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-none-linux-gnueabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/device/fsl/toolchain/FriendlyARM/toolschain/4.4.3/bin

# bootloader
TARGET_BOOTLOADER_CONFIG := mx53_smd_android_config


# define frame buffer count
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3



# TWRP
TW_THEME := portrait_mdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/pwm-backlight.0/brightness"
TW_MAX_BRIGHTNESS := 255
DEVICE_RESOLUTION := 768x1024
RECOVERY_GRAPHICS_USE_LINELENGTH := true

#TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"

RECOVERY_SDCARD_ON_DATA := false
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_INTERNAL_STORAGE_PATH := "/data/share"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"

TW_NO_USB_STORAGE := false
