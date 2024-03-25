include ../../../config.mk

EXTRA_FLAGS=

2mm.wasm: 2mm.c 2mm.h
	${VERBOSE} emcc -o 2mm.wasm 2mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

2mm.h: 2mm.wasm
	xxd -i 2mm.wasm > test_wasm.h

all: 2mm.h

clean:
	rm -f 2mm 2mm.wasm 2mm.h

