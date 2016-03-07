# APPlication name, you can change it in make command line parameters
# to compile other onefile program with same makefile
APP = add

# some std.variables widely used in Linux source builds:
# architecture
ARCH = arm
# target system triplet
TARGET = $(ARCH)-none-eabi-

# std. toolchain commands
AS = $(TARGET)as
LD = $(TARGET)ld
CC = $(TARGET)gcc
CXX = $(TARGET)g++
OBJDUMP = $(TARGET)objdump

# FlashROM size of target system, in 4K block
FLASHBLOCKS = 4K
emulation: $(APP).flash
	qemu-system-$(ARCH) -M connex -pflash $< \
		-nographic -serial /dev/null

$(APP).flash: $(APP).bin
	dd if=/dev/zero of=$@ bs=4K count=$(FLASHBLOCKS)
	dd if=$< of=$@ bs=4K conv=notrunc
$(APP).bin: $(APP).elf
	$(OBJCOPY) -O binary $< $@
$(APP).elf: $(APP).o	
	$(LD) -o $(APP).elf $(APP).o
$(APP).o: $(APP).s
	$(AS) -o $(APP).o $(APP).s
