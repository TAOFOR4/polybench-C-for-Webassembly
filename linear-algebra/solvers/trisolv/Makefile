include ../../../config.mk

EXTRA_FLAGS=

trisolv.wasm: trisolv.c trisolv.h
	${VERBOSE} emcc -o trisolv.wasm trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

trisolv.h: trisolv.wasm
	xxd -i trisolv.wasm > test_wasm.h

all: trisolv.h

clean:
	rm -f trisolv trisolv.wasm trisolv.h

