include ../../config.mk

EXTRA_FLAGS=

fdtd-2d.wasm: fdtd-2d.c fdtd-2d.h
	${VERBOSE} emcc -o fdtd-2d.wasm fdtd-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

fdtd-2d.h: fdtd-2d.wasm
	xxd -i fdtd-2d.wasm > test_wasm.h

all: fdtd-2d.h

clean:
	rm -f fdtd-2d fdtd-2d.wasm fdtd-2d.h

