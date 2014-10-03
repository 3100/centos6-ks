#! /bin/bash
PWD=`pwd`
CLONE_DIR="${PWD}/img"
OUT_DIR="${PWD}/out"
ISO_NAME=CentOS_DVD.iso

( cd ${CLONE_DIR}; sudo mkisofs -v -r -J -o ${OUT_DIR}/${ISO_NAME} -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table .)
exit 0
