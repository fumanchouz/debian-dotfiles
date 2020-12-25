#! /bin/bash

OS=debian
ARCH=amd64
DISTRO=sid
CHROOT=/mnt

for dir in dev sys proc; do
  if [ ! -d $CHROOT/$dir ]; then
    mkdir $CHROOT/$dir
  fi

  mount -o bind $dir $CHROOT/$dir
done

debootstrap                      \
  --include=sudo,vim,zsh         \
  --arch $ARCH                   \
  $DISTRO $CHROOT                \
  http://mirror.yandex.ru/$OS

chroot $CHROOT
