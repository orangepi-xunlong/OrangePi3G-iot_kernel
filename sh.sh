#!/bin/bash -e

TOOLCHAIN=/xspace/OrangePi/MTK/SourceCode/OrangePi_3G-IOT/toolchain/arm-eabi-4.7/bin/arm-eabi-
OUTPUT=/xspace/OrangePi/MTK/SourceCode/OrangePi_3G-IOT/output/obj/KERNEL_OBJ
export PATH=/xspace/OrangePi/MTK/SourceCode/OrangePi_3G-IOT/external/make:$PATH
make CROSS_COMPILE=$TOOLCHAIN TARGET_PRODUCT=hexing72_cwet_kk silentoldconfig O=$OUTPUT
#make CROSS_COMPILE=$TOOLCHAIN TARGET_PRODUCT=hexing72_cwet_lca 3g-iot-A_defconfig O=$OUTPUT
make $1 CROSS_COMPILE=$TOOLCHAIN TARGET_PRODUCT=hexing72_cwet_kk O=$OUTPUT

#MTK_PROJECT=hexing72_cwet_lca
#kernel_zimg="../output/obj/KERNEL_OBJ/arch/arm/boot/zImage"
#mkimg="../external/mediatek/build/tools/mkimage"
#${mkimg} ${kernel_zimg} KERNEL > ../output/obj/KERNEL_OBJ/kernel_${MTK_PROJECT}.bin

#../external/mkbootimg --kernel ../output/obj/KERNEL_OBJ/kernel_hexing72_cwet_lca.bin --board 2016.07.04  --output ../output/system/boot.img
