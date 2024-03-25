include ../../../config.mk

EXTRA_FLAGS=

gesummv.wasm: gesummv.c gesummv.h
	${VERBOSE} emcc -o gesummv.wasm gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

gesummv.h: gesummv.wasm
	xxd -i gesummv.wasm > test_wasm.h

all: gesummv.h

clean:
	rm -f gesummv gesummv.wasm gesummv.h

