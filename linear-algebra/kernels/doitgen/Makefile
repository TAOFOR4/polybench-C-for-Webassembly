include ../../../config.mk

EXTRA_FLAGS=

doitgen.wasm: doitgen.c doitgen.h
	${VERBOSE} emcc -o doitgen.wasm doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

doitgen.h: doitgen.wasm
	xxd -i doitgen.wasm > test_wasm.h

all: doitgen.h

clean:
	rm -f doitgen doitgen.wasm doitgen.h

