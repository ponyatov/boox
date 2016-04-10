log.log: ./exe.exe
	./exe.exe > log.log && tail $(TAIL) log.log

