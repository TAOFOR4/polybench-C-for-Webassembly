include ../../config.mk

EXTRA_FLAGS=-lm

correlation.wasm: correlation.c correlation.h
	${VERBOSE} emcc -o correlation.wasm correlation.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

correlation.h: correlation.wasm
	xxd -i correlation.wasm > test_wasm.h

all: correlation.h

clean:
	rm -f correlation correlation.wasm correlation.h

