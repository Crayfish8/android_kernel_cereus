export ARCH=arm
export CROSS_COMPILE=../../arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
make cereus_defconfig O=out
make -j$(grep -c ^processor /proc/cpuinfo) O=out
