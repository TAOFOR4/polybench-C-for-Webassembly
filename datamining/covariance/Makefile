include ../../config.mk

EXTRA_FLAGS=

covariance.wasm: covariance.c covariance.h
	${VERBOSE} emcc -o covariance.wasm covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

covariance.h: covariance.wasm
	xxd -i covariance.wasm > test_wasm.h

all: covariance.h

clean:
	rm -f covariance covariance.wasm covariance.h

