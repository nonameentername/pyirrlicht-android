#!/bin/sh

export ROOTDIR=$(dirname $(readlink -f $0))

export NDK="$HOME/source/android-ndk"
export SDK="$HOME/source/android-sdk/"
export NDKPLATFORM="$NDK/platforms/android-9/arch-arm"

export PATH="$NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/:$NDK:$SDK/tools:$PATH"

NDK_MODULE_PATH=$HOME/source/irrlicht-android/project/jni ndk-build

mkdir -p $ROOTDIR/irrlicht/bin

cp $ROOTDIR/libs/armeabi/irrlicht.so $ROOTDIR/irrlicht/bin/irrlicht.so
