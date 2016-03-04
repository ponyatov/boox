
.PHONY: all
all: add.flash

%.o: %.s
	arm-none-eabi-as -o $@ $<
%.elf: %.o	
	arm-none-eabi-ld -o $@ $<
%.bin: %.elf
	arm-none-eabi-objcopy -O binary $< $@
%.flash: %.bin
	dd if=/dev/zero of=$@ bs=4K count=4K &&\
	dd if=$< of=$@ bs=4K conv=notrunc
	 