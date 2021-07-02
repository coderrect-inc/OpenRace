FROM coderrect/openrace-env

## Install OpenRace
RUN git clone https://github.com/coderrect-inc/OpenRace.git
RUN mkdir /OpenRace/build
WORKDIR /OpenRace/build
RUN cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_INSTALL=/usr/local/ ..
RUN cmake --build  . --parallel --target openrace
RUN cp bin/openrace /usr/bin/openrace

# Set working dir to examples directory
WORKDIR /OpenRace/examples

