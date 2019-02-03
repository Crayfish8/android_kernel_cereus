cd repack_boot
abootimg -x boot.img bootimg.cfg zImage-dtb
cp ../out/arch/arm/boot/zImage-dtb zImage-dtb
abootimg --create boot_new.img -f bootimg.cfg -k zImage-dtb -r initrd.img
cd ..
