#!/bin/sh
CWD=$(pwd)
PKGS="
acpid
bash
bzip2
coreutils
cpio
cryptsetup
dcron
device-mapper
dialog
diffutils
e2fsprogs
file
findutils
gawk
gpm
grep
gzip
kernel-generic
less
libgcrypt
libgpg-error
libusb
libutempter
lilo
logrotate
lvm2
man
mktemp
module-init-tools
ncompress
ncurses
nvi
pciutils
pcmciautils
pkgtools
procinfo
procps
psmisc
readline
sed
shadow
sharutils
slocate
sysfsutils
sysklogd
syslinux
sysvinit
tar
termcap-compat
time
tnftp
tree
udev
usbutils
util-linux
which
whois
xz
"

for i in $PKGS; do
  cd system/$i || exit 1
  sh ../../build.sh install || exit 1
  cd $CWD || exit 1
done

