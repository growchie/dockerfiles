#!/bin/sh
mount -t proc /proc etch/proc
mount --rbind /dev/ etch/dev
mount --make-rslave etch/dev
mount --rbind /sys/ etch/sys
mount --make-rslave etch/sys
chroot etch /bin/bash
