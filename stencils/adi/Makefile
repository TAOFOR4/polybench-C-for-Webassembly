include ../../config.mk

EXTRA_FLAGS=

adi.wasm: adi.c adi.h
	${VERBOSE} emcc -o adi.wasm adi.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

adi.h: adi.wasm
	xxd -i adi.wasm > test_wasm.h

all: adi.h

clean:
	rm -f adi adi.wasm adi.h

