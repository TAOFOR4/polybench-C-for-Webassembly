include ../../../config.mk

EXTRA_FLAGS=

trmm.wasm: trmm.c trmm.h
	${VERBOSE} emcc -o trmm.wasm trmm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

trmm.h: trmm.wasm
	xxd -i trmm.wasm > test_wasm.h

all: trmm.h

clean:
	rm -f trmm trmm.wasm trmm.h

