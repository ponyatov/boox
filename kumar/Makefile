
O = add.o arrsum.o strlen.o
O += summain.o sumsub.o

ELF = add.elf arrsum.elf strlen.elf

BIN = add.bin arrsum.bin strlen.bin

FLASH = add.flash arrsum.flash strlen.flash

# some std.variables widely used in Linux source builds:
# архитекутра: arm mips avr i386 x86_64
ARCH = arm
# триплет целевой системы: avr-none-elf i486-none-elf i686-linux-uclibc ...
TARGET = $(ARCH)-none-eabi-

# стандартные переменные с командами GNU toolchain
AS = $(TARGET)as
LD = $(TARGET)ld
CC = $(TARGET)gcc
CXX = $(TARGET)g++
OBJDUMP = $(TARGET)objdump
OBJCOPY = $(TARGET)objcopy
NM = $(TARGET)nm

# шаблонные правила 
## FlashROM size of target system, in 4K block
FLASHBLOCKS = 4K
%.flash: %.bin
	dd if=/dev/zero of=$@ bs=4K count=$(FLASHBLOCKS)
	dd if=$< of=$@ bs=4K conv=notrunc
%.bin: %.elf
	$(OBJCOPY) -O binary $< $@
%.elf: %.o	
	$(LD) $(LDFLAGS) -o $@ $<
%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

.PHONY: all
all: $(FLASH)

.PHONY: clean
clean:
	rm -f *.o *.elf *.bin *.flash

## APPlication name, you can change it in make command line parameters
## to compile other onefile program with same makefile
#APP = add
#
#emulation: $(APP).flash
#	qemu-system-$(ARCH) -M connex -pflash $< \
#		-nographic -serial /dev/null
#
