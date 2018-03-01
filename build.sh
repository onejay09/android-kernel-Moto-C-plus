#!/bin/bash

#DhirajMS
#Compile script for kernel


#clean out dir
#rm -rf out
mkdir -p out


#ARCH
export ARCH=arm


#host and user
#export KBUILD_BUILD_USER="DhirajMS"
#export KBUILD_BUILD_HOST="Dracarys"


#get toolchain gcc-4.8
#git clone https://github.com/DhirajSurvase/GCC_4.8 gcc4.8
#export CROSS_COMPILE=/home/ubuntu/kcp/gcc4.8/bin/arm-eabi-

#get toolchain gcc-4.9
git clone https://github.com/DhirajSurvase/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9 gcc4.9
export CROSS_COMPILE=/home/ubuntu/los/kernel/moto/panelli/gcc4.9/bin/arm-linux-androideabi-


#Defconfig for Moto C plus
#make -C $PWD O=$PWD/out ARCH=arm A158_defconfig
make -C $PWD O=$PWD/out ARCH=arm panelli_defconfig


#CompileNow
make -j64 -C $PWD O=$PWD/out ARCH=arm
