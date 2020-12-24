#!/bin/bash

OS=debian
ARCH=amd6
DISTRO=sid
CHROOT=/mnt

debootstrap --include=sudo,nano,wget --arch $ARCH $DISTRO $CHROOT http://mirror.yandex.ru/$OS/

mount -o bind /dev $CHROOT/dev
mount -o bind /sys $CHROOT/sys
