include ../../../config.mk

EXTRA_FLAGS=

durbin.wasm: durbin.c durbin.h
	${VERBOSE} emcc -o durbin.wasm durbin.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

durbin.h: durbin.wasm
	xxd -i durbin.wasm > test_wasm.h

all: durbin.h

clean:
	rm -f durbin durbin.wasm durbin.h

