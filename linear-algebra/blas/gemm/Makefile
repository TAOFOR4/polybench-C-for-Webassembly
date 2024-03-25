include ../../../config.mk

EXTRA_FLAGS=

gemm.wasm: gemm.c gemm.h
	${VERBOSE} emcc -o gemm.wasm gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

gemm.h: gemm.wasm
	xxd -i gemm.wasm > test_wasm.h

all: gemm.h

clean:
	rm -f gemm gemm.wasm gemm.h

