#!/bin/bash

OS=debian
ARCH=amd6
DISTRO=sid
CHROOT=/mnt

debootstrap                                                 \
	--include=sudo, zsh, vim, wget, curl,                   \
		linux-base, linux-image-$ARCH, linux-headers,       \
		firmware-amd-graphics                               \
		firmware-linux, firmware-misc-nonfree,              \
		firmware-atheros, firmwate-ralink, firmware-realtek \
	--arch $ARCH                                            \
	$DISTRO                                                 \
	$CHROOT                                                 \
	http://mirror.yandex.ru/$OS

mount -o bind /dev $CHROOT/dev
mount -o bind /sys $CHROOT/sys
