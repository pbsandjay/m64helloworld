mips64-elf-gcc -Wall -O1 -mtune=vr4300 -march=vr4300 -mabi=32 -fomit-frame-pointer -G0 -c hw.c
armips main.asm
n64crc "m64.hw.z64"