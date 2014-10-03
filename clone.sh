#! /bin/bash
PWD=`pwd`
CLONE_DIR="${PWD}/img"
SRC_DIR="${PWD}"

if [ ! -d /media/ ]; then
  sudo mount /dev/cdrom /media/
fi
( cd /media/; sudo find . -maxdepth 1 -mindepth 1 -exec cp -rp {} ${CLONE_DIR}/ \;)
sudo cp ${SRC_DIR}/isolinux.cfg ${CLONE_DIR}/isolinux -f
exit 0
