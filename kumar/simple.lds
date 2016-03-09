SECTIONS { <1>
	. = 0x00000000; <2>
	.text : { <3>
		abc.o (.text); 
		def.o (.text);
	} <3>
}