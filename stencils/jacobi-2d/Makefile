include ../../config.mk

EXTRA_FLAGS=

jacobi-2d.wasm: jacobi-2d.c jacobi-2d.h
	${VERBOSE} emcc -o jacobi-2d.wasm jacobi-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

jacobi-2d.h: jacobi-2d.wasm
	xxd -i jacobi-2d.wasm > test_wasm.h

all: jacobi-2d.h

clean:
	rm -f jacobi-2d jacobi-2d.wasm jacobi-2d.h

