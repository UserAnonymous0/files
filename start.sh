#!/usr/bin/env bash
unset LD_PRELOAD
proot --link2symlink -0 \
	-r ~/kali-armhf \
	-b /dev \
	-b /sys \
	-b /proc \
	-b /sdcard \
	-b /storage \
	-b ${HOME} \
	-w /root \
	/usr/bin/env \
	HOME=/root \
	TERM=${TERM} \
	LANG=${LANG} \
	PATH=/bin:/usr/bin:/sbin:/usr/sbin \
	/bin/bash
