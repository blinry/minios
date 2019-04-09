%.bin: %.asm
	yasm -f bin -o $(basename $<).bin $<
