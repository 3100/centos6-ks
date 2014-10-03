#! /bin/bash
PWD=`pwd`
CLONE_DIR="${PWD}/img"
SRC_DIR="${PWD}"

DEV_DIR="/dev/cdrom"
MNT_DIR="/media/"

if [ ! -d ${MNT_DIR} ]; then
  sudo mount ${DEV_DIR} ${MNT_DIR}
fi
( cd ${MNT_DIR}; sudo find . -maxdepth 1 -mindepth 1 -exec cp -rp {} ${CLONE_DIR}/ \;)
sudo umount ${DEV_DIR}
sudo cp ${SRC_DIR}/isolinux.cfg ${CLONE_DIR}/isolinux -f
exit 0
