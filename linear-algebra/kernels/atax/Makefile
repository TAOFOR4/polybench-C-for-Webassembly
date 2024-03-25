include ../../../config.mk

EXTRA_FLAGS=

atax.wasm: atax.c atax.h
	${VERBOSE} emcc -o atax.wasm atax.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

atax.h: atax.wasm
	xxd -i atax.wasm > test_wasm.h

all: atax.h

clean:
	rm -f atax atax.wasm atax.h

