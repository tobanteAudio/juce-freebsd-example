# JUCE FreeBSD Port

Tests projects for my fork/port of `JUCE` to FreeBSD.

- Fork: [tobanteAudio/JUCE](https://github.com/tobanteAudio/JUCE/tree/develop)
- Original: [WeAreROLI/JUCE](https://github.com/WeAreROLI/JUCE/tree/develop)

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

Clone this repository recursively, so you get the forked version of `JUCE`.

```sh
git clone --recursive https://github.com/tobanteAudio/juce-freebsd-example.git
```

## Dependencies

- FreeBSD 12
- C++17 compiler
  - clang 6.0.1 & 8.0 tested
- gmake

```sh
sudo pkg install gmake freetype2 alsa-lib pkgconf gtk3
```

## Build

Each example project can be build using `gmake`:

```sh
cd $PROJECT_ROOT/console_app
gmake
gmake clean
```
