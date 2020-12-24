#! /bin/bash

OS=debian
ARCH=amd6
DISTRO=sid
CHROOT=/mnt

if [ -d $CHROOT/{boot,dev,sys} ]
then
  mkdir $CHROOT/{boot,dev,sys}
fi

debootstrap                      \
  --include=sudo,vim,zsh         \
  --arch $ARCH                   \
  $DISTRO $CHROOT                \
  http://mirror.yandex.ru/$OS

for dir in dev sys proc
do
  mount -o bind $dir $CHROOT/$dir
done

chroot $CHROOT
