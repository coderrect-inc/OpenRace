FROM coderrect/openrace-env AS build

RUN git clone https://github.com/coderrect-inc/OpenRace.git
RUN mkdir /OpenRace/build
WORKDIR /OpenRace/build
RUN conan install ..
RUN cmake -DLLVM_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm/ ..
RUN cmake --build . -j
RUN cp bin/openrace /usr/bin/openrace


