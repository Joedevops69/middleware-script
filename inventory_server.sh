
#!/bin/bash



echo " checking the kernel version"
uname -r

echo " checking the os version"
cat /etc/os-release

echo " checking the hard drive"
lsblk
echo " checking the number of processor "
nproc


