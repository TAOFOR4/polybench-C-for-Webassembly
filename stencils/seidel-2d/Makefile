include ../../config.mk

EXTRA_FLAGS=

seidel-2d.wasm: seidel-2d.c seidel-2d.h
	${VERBOSE} emcc -o seidel-2d.wasm seidel-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

seidel-2d.h: seidel-2d.wasm
	xxd -i seidel-2d.wasm > test_wasm.h

all: seidel-2d.h

clean:
	rm -f seidel-2d seidel-2d.wasm seidel-2d.h

