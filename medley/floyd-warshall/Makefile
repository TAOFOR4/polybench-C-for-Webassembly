include ../../config.mk

EXTRA_FLAGS=

floyd-warshall.wasm: floyd-warshall.c floyd-warshall.h
	${VERBOSE} emcc -o floyd-warshall.wasm floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

floyd-warshall.h: floyd-warshall.wasm
	xxd -i floyd-warshall.wasm > test_wasm.h

all: floyd-warshall.h

clean:
	rm -f floyd-warshall floyd-warshall.wasm floyd-warshall.h

