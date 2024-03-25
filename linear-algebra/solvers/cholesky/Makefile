include ../../../config.mk

EXTRA_FLAGS=-lm

cholesky.wasm: cholesky.c cholesky.h
	${VERBOSE} emcc -o cholesky.wasm cholesky.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cholesky.h: cholesky.wasm
	xxd -i cholesky.wasm > test_wasm.h

all: cholesky.h

clean:
	rm -f cholesky cholesky.wasm cholesky.h

