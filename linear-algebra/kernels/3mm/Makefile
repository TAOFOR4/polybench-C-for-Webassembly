include ../../../config.mk

EXTRA_FLAGS=

3mm.wasm: 3mm.c 3mm.h
	${VERBOSE} emcc -o 3mm.wasm 3mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

3mm.h: 3mm.wasm
	xxd -i 3mm.wasm > test_wasm.h

all: 3mm.h

clean:
	rm -f 3mm 3mm.wasm 3mm.h

