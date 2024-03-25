include ../../../config.mk

EXTRA_FLAGS=-lm

gramschmidt.wasm: gramschmidt.c gramschmidt.h
	${VERBOSE} emcc -o gramschmidt.wasm gramschmidt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

gramschmidt.h: gramschmidt.wasm
	xxd -i gramschmidt.wasm > test_wasm.h

all: gramschmidt.h

clean:
	rm -f gramschmidt gramschmidt.wasm gramschmidt.h

