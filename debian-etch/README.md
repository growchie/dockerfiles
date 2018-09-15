Docker image based on Debian Etch for the amd64 architecture. This distro has been deprecated for quite some time, and its usage is not recommended for security reasons. Still you may use it in isolated environment.
sources.list has been updated to pull from debian-archive so that you have a working apt-get.

Extract rootfs.tar.gz into etch/ directory and use the provided chroot.sh script as root (or sudo) to chroot into the environment. After that you may run 'export /etc/profile' to set your chroot environment (not required). Use apt-get to modify the existing packages.
Exit the chroot and unmount the file systems like:
    umount -R etch/dev
    umount -R etch/sys
    umount -R etch/proc
Only after you are sure you have unmounted fs listed above, compress again the content of etch/ and replace rootfs.tar.gz.

