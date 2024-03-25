include ../../../config.mk

EXTRA_FLAGS=

lu.wasm: lu.c lu.h
	${VERBOSE} emcc -o lu.wasm lu.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

lu.h: lu.wasm
	xxd -i lu.wasm > test_wasm.h

all: lu.h

clean:
	rm -f lu lu.wasm lu.h

