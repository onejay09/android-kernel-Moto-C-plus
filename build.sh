#!/bin/bash

#DhirajMS
#Compile script for kernel

#clean out dir
#rm -rf out

mkdir -p out

#get toolchain gcc-4.8
git clone https://github.com/DhirajSurvase/GCC_4.8 toolchain

export ARCH=arm

#host and user
#export KBUILD_BUILD_USER="DhirajMS"
#export KBUILD_BUILD_HOST="Dracarys"

#Defconfig for Moto C plus
#make -C $PWD O=$PWD/out ARCH=arm A158_defconfig

make -C $PWD O=$PWD/out ARCH=arm A158_debug_defconfig

make -j64 -C $PWD O=$PWD/out ARCH=arm
