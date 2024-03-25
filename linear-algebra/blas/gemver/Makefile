include ../../../config.mk

EXTRA_FLAGS=

gemver.wasm: gemver.c gemver.h
	${VERBOSE} emcc -o gemver.wasm gemver.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

gemver.h: gemver.wasm
	xxd -i gemver.wasm > test_wasm.h

all: gemver.h

clean:
	rm -f gemver gemver.wasm gemver.h

