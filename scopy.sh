#! /bin/bash
PWD=`pwd`
OUT_DIR="${PWD}/out"
ISO_NAME=CentOS_DVD.iso

SCP_TO="sato@192.168.5.35:~"
scp ${OUT_DIR}/${ISO_NAME} ${SCP_TO}
exit 0
