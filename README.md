# polybench-C-for-Webassembly
This is a repo for translating C into Webassemly and corresponding c head file.

Here we are based on polybench C, using emcc and xxd(Linux). For windows, the users can modify the perl scripts and use binarydump(Download on your system or use [WAMR tools](https://github.com/bytecodealliance/wasm-micro-runtime/tree/main/test-tools/binarydump-tool))

## Tutorial


### Step 1: Download the repo


Clone this repo,
```
$ git clone https://github.com/TAOFOR4/polybench-C-for-Webassembly.git
$ cd polybench-C-Webassembly
```

### Step 2.a: Make the perl file executable
```
$ cd utilities
$ chmod +x makefile-gen.pl
```

### Step 2.b: Generate .wasm and .h file
```
$ ./makefile-gen.pl .. -cfg
```

### Step 3: Check generated files

The output files will be in the same folder as the source C file. WASM file shares the same name with the source C file and the head c file is all named with 'test_wasm.h'.


