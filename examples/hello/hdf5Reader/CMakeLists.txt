#------------------------------------------------------------------------------#
# Distributed under the OSI-approved Apache License, Version 2.0.  See
# accompanying file Copyright.txt for details.
#------------------------------------------------------------------------------#

if(ADIOS2_HAVE_MPI)
  add_executable(hello_hdf5Reader helloHDF5Reader.cpp)
  target_link_libraries(hello_hdf5Reader MPI::MPI_C)
else()
  add_executable(hello_hdf5Reader helloHDF5Reader_nompi.cpp)
endif()
target_link_libraries(hello_hdf5Reader adios2)
