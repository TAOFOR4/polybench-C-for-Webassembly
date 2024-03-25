include ../../../config.mk

EXTRA_FLAGS=

syr2k.wasm: syr2k.c syr2k.h
	${VERBOSE} emcc -o syr2k.wasm syr2k.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

syr2k.h: syr2k.wasm
	xxd -i syr2k.wasm > test_wasm.h

all: syr2k.h

clean:
	rm -f syr2k syr2k.wasm syr2k.h

