include ../../../config.mk

EXTRA_FLAGS=

ludcmp.wasm: ludcmp.c ludcmp.h
	${VERBOSE} emcc -o ludcmp.wasm ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

ludcmp.h: ludcmp.wasm
	xxd -i ludcmp.wasm > test_wasm.h

all: ludcmp.h

clean:
	rm -f ludcmp ludcmp.wasm ludcmp.h

