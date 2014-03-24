## Vold 2.0 Generic fstab
## - San Mehat (san@android.com)
##

#######################
## Regular device mount
##
## Format: dev_mount <label> <mount_point> <part> <sysfs_path1...>
## label        - Label for the volume
## mount_point  - Where the volume will be mounted
## part         - Partition # (1 based), or 'auto' for first usable partition.
## <sysfs_path> - List of sysfs paths to source devices
######################

## Example of a standard sdcard mount for the emulator / Dream
# Mounts the first usable partition of the specified device
#for internal emmc as primary storage
#dev_mount sdcard /mnt/sdcard auto /devices/platform/mxsdhci.2/mmc_host/mmc0
#for external sdcard as primary storage
#dev_mount sdcard /mnt/sdcard auto /devices/platform/sdhci-esdhc-imx.3/mmc_host/mmc0/
#dev_mount extsd /mnt/sdcard/extsd auto /devices/platform/mxsdhci.0/mmc_host/mmc1
#used for usb host
dev_mount udisk /mnt/udisk auto /devices/platform/fsl-ehci.1/usb2
#used for usb otg host
#dev_mount udisk /mnt/sdcard/udisk auto /devices/platform/fsl-ehci.0/usb
#mount SDHC4 SD card /mnt/sdcard as primary storage forMX6Q SABER_LITE RevC
dev_mount extsd /mnt/extsd auto /devices/platform/sdhci-esdhc-imx.2/mmc_host/mmc0
#mount SDHC3 TF card to /mnt/extsd as external storage forMX6Q SABER_LITE RevC
dev_mount sdcard /mnt/sdcard 4 /devices/platform/sdhci-esdhc-imx.1/mmc_host/mmc1

## Example of a dual card setup
# dev_mount left_sdcard  /sdcard1  auto /devices/platform/goldfish_mmc.0 /devices/platform/msm_sdcc.2/mmc_host/mmc1
# dev_mount right_sdcard /sdcard2  auto /devices/platform/goldfish_mmc.1 /devices/platform/msm_sdcc.3/mmc_host/mmc1

## Example of specifying a specific partition for mounts
# dev_mount sdcard /sdcard 2 /devices/platform/goldfish_mmc.0 /devices/platform/msm_sdcc.2/mmc_host/mmc1
