program.dsk: main.c
	zcc +cpc -lndos -lm -subtype=dsk -create-app -o program $^

clean:
	rm program program.cpc program.dsk zcc_opt.def
