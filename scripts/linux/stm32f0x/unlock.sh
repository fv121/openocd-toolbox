#!/bin/bash

#xxx.hex or xxx.bin

#stm32f103rbt6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00020000 #128KB

#stm32f103c8t6
FLASH_ADDR=0x08000000
FLASH_SIZE=0x00010000 #64KB

#stm32f030c8t6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00010000 #64KB

CURRENT_DIR=$(cd $(dirname $0); pwd)

CONFIG=${CURRENT_DIR}/../tcl/target/stm32f0x_cmsisdap.cfg


sudo openocd -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    stm32f0x unlock 0
    reset halt;
    shutdown;
"
