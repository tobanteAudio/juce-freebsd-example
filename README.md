# JUCE FreeBSD Port

Tests projects for my fork/port of `JUCE` to FreeBSD.

- Fork: [tobanteAudio/JUCE](https://github.com/tobanteAudio/JUCE)
- Original: [WeAreROLI/JUCE](https://github.com/WeAreROLI/JUCE)

## What's working?

The following has been succesfully compiled on FreeBSD:

- juce_core
- juce_data_structures

## What's not working?

- juce_core
    - `sys/timeb.h` deprecated since FreeBSD 11.1
    - `Process::openDocument` (linux `environ` is missing on FreeBSD)
    - `MACAddress::findAllAddresses`
    - `SystemStats::getMemorySizeInMegabytes`
    - `String SystemStats::getUserLanguage` (Missing: `_NL_IDENTIFICATION_LANGUAGE`)
    - `String SystemStats::getUserRegion` (Missing: `_NL_IDENTIFICATION_TERRITORY`)

## Clone

Clone this repository recursively, so you get the foerked version of `JUCE`.
```sh
git clone --recursive https://github.com/tobanteAudio/juce-freebsd-example.git
```
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
