CC=clang
CXX=clang++
FLAGS=-g -fno-discard-value-names -S -emit-llvm

C_SRC=$(wildcard *.c)
C_OUT=$(C_SRC:.c=.ll)
CXX_SRC=$(wildcard *.cpp)
CXX_OUT=$(CXX_SRC:.cpp=.ll)

all: ctest cpptest

ctest: $(C_OUT)

cpptest: $(CXX_OUT)

%.ll: %.c
	$(CC) $(FLAGS) $< -o ll/$@

%.ll: %.cpp
	$(CXX) $(FLAGS) $< -o ll/$@

clean:
	rm -f ll/*.ll
