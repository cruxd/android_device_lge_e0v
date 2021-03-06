#dev        size      name
#mmcblk0:    3784704 
#mmcblk0p1:  20 
#mmcblk0p2:  1003 
#mmcblk0p3:  1024 
#mmcblk0p4:  1 
#mmcblk0p5:  4096 
#mmcblk0p6:  4096 
#mmcblk0p7:  4096 
#mmcblk0p8:  24576   "misc"
#mmcblk0p9:  8192    "boot" 
#mmcblk0p10: 4096 
#mmcblk0p11: 4096 
#mmcblk0p12: 28672 
#mmcblk0p13: 28672 
#mmcblk0p14: 389120  "system"
#mmcblk0p15: 8192 
#mmcblk0p16: 225280  "cache"
#mmcblk0p17: 8192    "recovery"
#mmcblk0p18: 8192 
#mmcblk0p19: 12288 
#mmcblk0p20: 2096128  "sdcard vfat"
#mmcblk0p21: 839680   "data ext4
#mmcblk0p22: 8192 
#mmcblk0p23: 4096 
#mmcblk0p24: 8192 
#mmcblk1p1:  964608   "external sd"

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/e0v/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := e0v
TARGET_CPU_VARIANT := generic

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=e0
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8192000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8192000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 389120000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 839680000
BOARD_FLASH_BLOCK_SIZE := 131072

#Kernel
TARGET_KERNEL_SOURCE := kernel/lge/mako
TARGET_KERNEL_CONFIG := e0v_defconfig

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
