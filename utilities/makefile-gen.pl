#!/usr/bin/perl

# Enhanced script to generate Makefiles, compile to .wasm, and convert to .h files
# for each benchmark in Polybench. Now also compiles and converts automatically.

use strict;
use warnings;

my $GEN_CONFIG = 0;
my $TARGET_DIR = ".";
my $COMPILE_AND_CONVERT = 1; # New flag to enable automatic compilation and conversion

if ($#ARGV != 0 && $#ARGV != 1) {
    printf("Usage: perl makefile-gen.pl output-dir [-cfg]\n");
    printf("  -cfg option generates config.mk in the output-dir.\n");
    exit(1);
}

foreach my $arg (@ARGV) {
    if ($arg =~ /-cfg/) {
        $GEN_CONFIG = 1;
    } elsif (!($arg =~ /^-/)) {
        $TARGET_DIR = $arg;
    }
}

my %categories = (
    'linear-algebra/blas' => 3,
    'linear-algebra/kernels' => 3,
    'linear-algebra/solvers' => 3,
    'datamining' => 2,
    'stencils' => 2,
    'medley' => 2
);

my %extra_flags = (
    'cholesky' => '-lm',
    'gramschmidt' => '-lm',
    'correlation' => '-lm'
);

foreach my $category (keys %categories) {
    my $target = $TARGET_DIR.'/'.$category;
    opendir(DIR, $target) or die "Directory $target not found.\n";
    while (my $dir = readdir(DIR)) {
        next if ($dir =~ /^\.\.?$/);
        next if (!-d $target.'/'.$dir);

        my $kernel = $dir;
        my $file = $target.'/'.$dir.'/Makefile';
        my $polybenchRoot = '../' x $categories{$category};
        my $configFile = $polybenchRoot.'config.mk';
        my $utilityDir = $polybenchRoot.'utilities';

        open(my $fh, '>', $file) or die "Failed to open $file.";

        print $fh <<EOF;
include $configFile

EXTRA_FLAGS=$extra_flags{$kernel}

$kernel.wasm: $kernel.c $kernel.h
	\${VERBOSE} emcc -o $kernel.wasm $kernel.c \${CFLAGS} -I. -I$utilityDir $utilityDir/polybench.c \${EXTRA_FLAGS}

$kernel.h: $kernel.wasm
	xxd -i $kernel.wasm > test_wasm.h

all: $kernel.h

clean:
	rm -f $kernel $kernel.wasm $kernel.h

EOF
        close($fh);

        if ($COMPILE_AND_CONVERT) {
            # New section to automatically compile and convert
            print "Compiling and converting $kernel in $target/$dir\n";
            system("cd $target/$dir && make all");
        }
    }
    closedir(DIR);
}

if ($GEN_CONFIG) {
    open(my $fh, '>', $TARGET_DIR.'/config.mk') or die "Failed to open file.";
    print $fh <<EOF;
CC=gcc
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO
EOF
    close($fh);
}
