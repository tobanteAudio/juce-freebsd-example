# JUCE FreeBSD Port

Tests projects for my fork/port of [WeAreROLI/JUCE](https://github.com/WeAreROLI/JUCE) to FreeBSD.

## What's working?

The following has been succesfully compiled on FreeBSD:

### Modules

- juce_core
- juce_data_structures

## Dependencies

- FreeBSD 12
- C++17 compiler
- CMake

## Build

You can build this project either with the included `Makefile` or calling `CMake` directly.

### Makefile

```sh
cd $PROJECT_ROOT
make debug
make clean
```

### CMake

```sh
cd $PROJECT_ROOT
mkdir build && cd build
cmake ..
cmake --build .
```
