include ../../config.mk

EXTRA_FLAGS=

heat-3d.wasm: heat-3d.c heat-3d.h
	${VERBOSE} emcc -o heat-3d.wasm heat-3d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

heat-3d.h: heat-3d.wasm
	xxd -i heat-3d.wasm > test_wasm.h

all: heat-3d.h

clean:
	rm -f heat-3d heat-3d.wasm heat-3d.h

