CMD=zcc +cpc -lndos -subtype=dsk -create-app
BINS=helloc hellos

all: $(patsubst %, %.dsk, ${BINS})

helloc.dsk: hello_c.c
	${CMD} -o $(patsubst %.dsk, %, $@) $^

hellos.dsk: hello_s.asm
	${CMD} -o $(patsubst %.dsk, %, $@) $^

clean:
	rm -f zcc_opt.def \
	$(patsubst %, %.dsk, ${BINS}) \
	$(patsubst %, %.cpc, ${BINS}) \
	${BINS}
