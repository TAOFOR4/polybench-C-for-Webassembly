include ../../config.mk

EXTRA_FLAGS=

nussinov.wasm: nussinov.c nussinov.h
	${VERBOSE} emcc -o nussinov.wasm nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

nussinov.h: nussinov.wasm
	xxd -i nussinov.wasm > test_wasm.h

all: nussinov.h

clean:
	rm -f nussinov nussinov.wasm nussinov.h

