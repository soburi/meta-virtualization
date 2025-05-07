set -x
qemu-system-aarch64 \
  -machine virt,virtualization=true,gic-version=3 \
  -cpu cortex-a57 \
  -smp 4 -m 1024 \
  -nographic \
  -serial mon:stdio \
  -kernel /home/crs/dom0/poky/build/tmp/deploy/images/qemuarm64/xen-qemuarm64 \
  -dtb /home/crs/dom0/poky/build/tmp/deploy/images/qemuarm64/xen-image-minimal-qemuarm64.rootfs.qemuboot.dtb \
  -device guest-loader,addr=0x45000000,kernel=/home/crs/dom0/poky/build/tmp/deploy/images/qemuarm64/Image,bootargs="console=hvc0 dom0_mem=512M dom0_max_vcpus=2 loglvl=all guest_loglvl=all" \
  -drive file=/home/crs/dom0/poky/build/tmp/deploy/images/qemuarm64/xen-image-minimal-qemuarm64.rootfs.ext4,if=virtio,format=raw \

  
  
