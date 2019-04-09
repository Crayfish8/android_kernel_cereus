# Supported devices:
*  ## Xiaomi Redmi 6. Codename - cereus

Primary supported, build system defaults to it.
*  ## Xiaomi Redmi 6A. Codename - cactus

Needs editing of build scripts and replacing of stock boot.img.

# Build instructions
1) Get a arm-androideabi toolcahin.

`git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9`

Unpack in in the same level as kernel sources:

`/android_kernel_cereus`

`/arm-linux-androideabi-4.9`

* If you choose to build with another gcc, put it to another place, redirect out to another folder - edit `build.sh` and `repack.sh`.

* If you want to build for cactus, change `cereus_defconfig` to `cactus_defconfig` in `build.sh`

2) Run `build.sh`

3) ...

4) If you want to repack boot image, raplace boot.img in `repack_boot` by your base kernel, run `repack.sh` script

5) Your builded kernel is `repack_boot/boot_new.img`
