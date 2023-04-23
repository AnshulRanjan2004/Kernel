#assemble boot.s file
as boot.s -o boot.o

#compile kernel.c file
gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

#linking the kernel with kernel.o and boot.o files
gcc -T linker.ld -o MyOS.bin -ffreestanding -O2 -nostdlib kernel.o boot.o -lgcc

#run it in qemu
qemu-system-x86_64 -cdrom MyOS.iso
