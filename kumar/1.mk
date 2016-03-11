emulation: add.flash
    qemu-system-arm -M connex -pflash add.flash \
        -nographic -serial /dev/null
flash.bin: add.bin
    dd if=/dev/zero of=flash.bin bs=4K count=4K
    dd if=add.bin of=flash.bin bs=4K conv=notrunc
add.bin: add.elf
    arm-none-eabi-objcopy -O binary add.elf add.bin
add.elf: add.o	
    arm-none-eabi-ld -o add.elf add.o
add.o: add.s
    arm-none-eabi-as -o add.o add.s