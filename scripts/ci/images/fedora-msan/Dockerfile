FROM fedora:latest AS base

# Install core dev packages
RUN dnf -y install clang llvm git make curl file

# Cleanup headers and packages
RUN dnf clean all

# Install the CMake binary
WORKDIR /opt/cmake
RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-Linux-x86_64.tar.gz | \
    tar -C /opt/cmake --strip-components=1 -xzv

# Create a non-root user to run the builds/tests
RUN export uid=1001 gid=1001 && \
    mkdir -p /home/adios2 && \
    echo "adios2:x:${uid}:${gid}:adios2,,,:/home/adios2:/bin/bash" >> /etc/passwd && \
    echo "adios2:x:${uid}:" >> /etc/group && \
    chown ${uid}:${gid} -R /home/adios2

# Install and initialize git-lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | bash && \
    dnf install -y git-lfs && \
    runuser -l adios2 -c 'git lfs install'

# Misc cleanup of unneeded files
RUN rm -rfv /tmp/* /var/cache/dnf

# Start the build stage
FROM base AS tmp

# Check out llvm
RUN mkdir -p /root/llvm/build && \
    cd /root/llvm && \
    git clone -b llvmorg-9.0.0 https://github.com/llvm/llvm-project.git src

# Build libcxx
RUN mkdir /root/llvm/build/libcxx && \
    cd /root/llvm/build/libcxx && \
    /opt/cmake/bin/cmake /root/llvm/src/llvm \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/opt/clang \
        -DCMAKE_C_COMPILER=/usr/bin/clang \
        -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
        -DLLVM_ENABLE_PROJECTS="libcxx;libcxxabi" \
        -DLLVM_USE_SANITIZER=MemoryWithOrigins && \
    make -j4 cxx cxxabi
RUN cd /root/llvm/build/libcxx && \
    make -j4 install-libcxx install-libcxxabi

# Discard the build trees
FROM base
COPY --from=tmp /opt/clang /opt/clang

USER adios2
ENV HOME /home/adios2
WORKDIR /home/adios2
CMD /bin/bash
