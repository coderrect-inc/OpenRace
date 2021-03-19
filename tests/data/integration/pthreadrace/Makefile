CC=clang
CXX=clang++
FLAGS=-g -fno-discard-value-names -S -emit-llvm

SRC=$(wildcard *.c)
OUT=$(SRC:.c=.ll)

all: $(OUT)

%.ll: %.c
	$(CC) $(FLAGS) $< -o ll/$@

clean:
	rm -f ll/*.ll
