include ../../../config.mk

EXTRA_FLAGS=

syrk.wasm: syrk.c syrk.h
	${VERBOSE} emcc -o syrk.wasm syrk.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

syrk.h: syrk.wasm
	xxd -i syrk.wasm > test_wasm.h

all: syrk.h

clean:
	rm -f syrk syrk.wasm syrk.h

