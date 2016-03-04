%.o: %.s
	arm-none-eabi-as -o $@ $<
