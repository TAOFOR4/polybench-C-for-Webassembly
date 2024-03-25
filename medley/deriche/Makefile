include ../../config.mk

EXTRA_FLAGS=

deriche.wasm: deriche.c deriche.h
	${VERBOSE} emcc -o deriche.wasm deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

deriche.h: deriche.wasm
	xxd -i deriche.wasm > test_wasm.h

all: deriche.h

clean:
	rm -f deriche deriche.wasm deriche.h

