set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_CXX_COMPILER /usr/bin/clang++)
set(_link_flags "-stdlib=libc++ -L /opt/llvm/9.0.0/libcxx-msan/lib -Wl,-rpath,/opt/llvm/9.0.0/libcxx-msan/lib -Wno-unused-command-line-argument")
set(_compile_flags "-nostdinc++ -isystem /opt/llvm/9.0.0/libcxx-msan/include/c++/v1 -fsanitize=memory -fsanitize-memory-track-origins")
set(CMAKE_EXE_LINKER_FLAGS_INIT ${_link_flags})
set(CMAKE_SHARED_LINKER_FLAGS_INIT ${_link_flags})
set(CMAKE_C_FLAGS_INIT ${_compile_flags})
set(CMAKE_CXX_FLAGS_INIT ${_compile_flags})