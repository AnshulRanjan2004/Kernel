# Kernel

Writing a kernel from scratch is to print something on screen. Using a VGA(Visual Graphics Array), a hardware system that controls the display. We will use GNU GRUB to load our kernel because it supports a multiboot of many operating systems.

## Requirements
* GNU/Linux
* Assembler - I am using GNU Assembler(gas) to instruct the bootloader for loading the starting point of our kernel.
* GCC - GNU Compiler Collection a cross compiler. A newer version of GCC. I am using 7.2.0 version of GCC.
* Xorriso - A package that creates, loads, manipulates ISO 9660 filesystem images.(man xorriso)
* grub-mkrescue - Make a GRUB rescue image, this package internally calls the xorriso functionality to build an iso image.
* QEMU - Quick EMUlator to boot our kernel in virtual machine without rebooting the main system.

## Output
![Screenshot 2023-04-23 205840](https://user-images.githubusercontent.com/91585064/233848967-e28a36a4-f13c-4696-b5d4-71730a702c03.png)

![Screenshot 2023-04-23 205707](https://user-images.githubusercontent.com/91585064/233848971-6b655f28-ca18-44b5-8893-89b2a9f68011.png)

![Screenshot 2023-04-23 205812](https://user-images.githubusercontent.com/91585064/233848969-b86b562e-b990-494c-ad4d-a086c0a431a7.png) 
