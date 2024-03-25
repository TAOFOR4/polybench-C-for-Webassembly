include ../../../config.mk

EXTRA_FLAGS=

bicg.wasm: bicg.c bicg.h
	${VERBOSE} emcc -o bicg.wasm bicg.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

bicg.h: bicg.wasm
	xxd -i bicg.wasm > test_wasm.h

all: bicg.h

clean:
	rm -f bicg bicg.wasm bicg.h

