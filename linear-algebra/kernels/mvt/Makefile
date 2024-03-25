include ../../../config.mk

EXTRA_FLAGS=

mvt.wasm: mvt.c mvt.h
	${VERBOSE} emcc -o mvt.wasm mvt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

mvt.h: mvt.wasm
	xxd -i mvt.wasm > test_wasm.h

all: mvt.h

clean:
	rm -f mvt mvt.wasm mvt.h

