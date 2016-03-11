SECTIONS {
	. = 0x00000000;
	.text : { * (.text); }
	flash_sdata = .; <1>

	. = 0xA0000000;
	ram_sdata = .; <2>
	.data : AT (flash_sdata) { * (.data); }
	ram_edata = .; <3>
	data_size = ram_edata - ram_sdata; <3>
}