CC=clang-10
CXX=clang++-10
CFLAGS=-S -emit-llvm -g -fopenmp -fno-discard-value-names
TOOL=openrace

all: demo

%.ll: %.c
	$(CC) $(CFLAGS) $<

%.ll: %.cpp
	$(CXX) $(CFLAGS) $<

demo: simplethread.ll
	$(TOOL) simplethread.ll

%: %.ll
	$(TOOL) $<

clean:
	@rm -f *.ll 

