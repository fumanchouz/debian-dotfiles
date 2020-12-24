#!/bin/bash

OS=debian
ARCH=amd6
DISTRO=sid
CHROOT=/mnt

mkdir $CHROOT/{boot,dev,sys}

debootstrap                            \
	--include=sudo, zsh, vim       \
	--arch $ARCH                   \
	$DISTRO $CHROOT                \
	http://mirror.yandex.ru/$OS

mount -o bind /dev $CHROOT/dev
mount -o bind /sys $CHROOT/sys
