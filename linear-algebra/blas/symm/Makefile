include ../../../config.mk

EXTRA_FLAGS=

symm.wasm: symm.c symm.h
	${VERBOSE} emcc -o symm.wasm symm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

symm.h: symm.wasm
	xxd -i symm.wasm > test_wasm.h

all: symm.h

clean:
	rm -f symm symm.wasm symm.h

