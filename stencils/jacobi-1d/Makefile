include ../../config.mk

EXTRA_FLAGS=

jacobi-1d.wasm: jacobi-1d.c jacobi-1d.h
	${VERBOSE} emcc -o jacobi-1d.wasm jacobi-1d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

jacobi-1d.h: jacobi-1d.wasm
	xxd -i jacobi-1d.wasm > test_wasm.h

all: jacobi-1d.h

clean:
	rm -f jacobi-1d jacobi-1d.wasm jacobi-1d.h

