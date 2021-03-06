[![GitHub (pre-)release](https://img.shields.io/github/release/ornladios/adios2/all.svg)]()
[![GitHub license](http://dmlc.github.io/img/apache2.svg)](./LICENSE)


[![Circle CI](https://circleci.com/gh/ornladios/ADIOS2.svg?style=shield)](https://circleci.com/gh/ornladios/ADIOS2)
[![Travis CI](https://travis-ci.org/ornladios/ADIOS2.svg)](https://travis-ci.org/ornladios/ADIOS2)
[![AppVeyor CI](https://ci.appveyor.com/api/projects/status/0s2a3qp57hgbvlhj?svg=true)](https://ci.appveyor.com/project/ornladios/adios2)

[![Coverity Scan Build Status](https://scan.coverity.com/projects/11116/badge.svg)](https://scan.coverity.com/projects/ornladios-adios2)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/6eeb5a8ac3e34d2599cfdea5bdc3390f)](https://www.codacy.com/app/chuckatkins/ADIOS2?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ornladios/ADIOS2&amp;utm_campaign=Badge_Grade)


# ADIOS 2 : The Adaptable Input Output System version 2
This is v2.4.0-rc1 of the ADIOS 2: The Adaptable Input/Output (I/O) System, ADIOS 2 is developed as part of the United States Department of Energy's Exascale Computing Program.

ADIOS 2 is a framework designed for scientific data I/O to publish and subscribe (put/get) data when and where required. 

ADIOS 2 would Transport and Transform your data as groups of self-describing variables and attributes across different media (file, wide-area-network, memory-to-memory, etc.) using a common application programming interface (API) for all transport modes. ADIOS 2 uses range from HPC supercomputers to personal computers and cloud based applications. 

ADIOS 2 focuses on:

1. **Performance** I/O scalability in high performance computing (HPC) applications.
2. **Adaptability** unified interfaces to allow for several modes of transport (files, memory-to-memory)  
3. **Ease of Use** two-level application programming interface (APIs)
    * Full APIs for HPC applications: C++11, Fortran 90, C 99, Python 2 and 3 
    * Simplified High-Level APIs for data analysis: Python 2 and 3, C++11, Matlab  
    
In addition, ADIOS 2 APIs are based on:

* **MPI** ADIOS 2 is MPI-based, it can be used in non-MPI serial code.

* **Data Groups** ADIOS 2 favors a deferred/prefetch/grouped variables transport mode by default to maximize data-per-request ratios. Sync mode, one variable at a time, is treated as the special case.

* **Data Steps** ADIOS 2 follow the actual production/consumption of data using an “steps” abstraction removing the need to manage extra indexing information.

* **Data Engines** ADIOS 2 Engine abstraction allows for reusing the APIs for different transport modes removing the need for drastic code changes.

## Documentation
Please find [The ADIOS 2 User Guide at readthedocs](https://adios2.readthedocs.io)


## Getting ADIOS2

* From source: [Build and Install ADIOS 2 with CMake v3.6 or above](http://adios2.readthedocs.io/en/latest/installation/installation.html)


* As conda packages: [https://anaconda.org/williamfgc](https://anaconda.org/williamfgc)


  Once ADIOS 2 is installed refer to: 

* [Linking ADIOS 2 in your own projects](https://adios2.readthedocs.io/en/latest/using/using.html)


## Releases

* Latest release: [v2.4.0-rc1](https://github.com/ornladios/ADIOS2/releases/tag/v2.4.0-rc1)

* Previous releases: [https://github.com/ornladios/ADIOS2/releases](https://github.com/ornladios/ADIOS2/releases)

## Reporting Bugs

If you found a bug, please open an [issue on ADIOS2 github repository](https://github.com/ornladios/ADIOS2/issues)

## Contributing

We invite the community to contribute, see [Contributor's Guide to ADIOS 2](Contributing.md) for instructions on how to contribute. ADIOS 2 will always be free and open-source.


## License
ADIOS >= 2.0 is licensed under the Apache License v2.0.  See the accompanying
[Copyright.txt](Copyright.txt) for more details.


## Directory layout
* bindings - public application programming interface, API, language bindings (C++11, C, Fortran, Python and Matlab)

* cmake - Project specific CMake modules

* examples - Simple set of examples in different languages

* scripts - Project maintenance and development scripts

* source - Internal source code for private components 
    * adios2 - source directory for the ADIOS2 library to be installed under install-dir/lib/libadios2.  
    * utils  - source directory for the binary utilities, to be installed under install-dir/bin 

* testing - Tests using [gtest](https://github.com/google/googletest)
