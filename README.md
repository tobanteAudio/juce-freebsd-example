# JUCE FreeBSD Port

Tests projects for my fork/port of `JUCE` to FreeBSD.

- Fork: [tobanteAudio/JUCE](https://github.com/tobanteAudio/JUCE/tree/develop)
- Original: [WeAreROLI/JUCE](https://github.com/WeAreROLI/JUCE/tree/develop)

## What's working?

The following has been succesfully compiled on FreeBSD:

- juce_audio_basics
- juce_audio_formats
- juce_core
- juce_data_structures
- juce_dsp
- juce_events

## What's not working?

- `DBG()` macro
    - Using this macro in a debug build crashes the build.

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

```sh
sudo pkg install freetype2 alsa-lib pkgconf gtk3
```

## Build

Each example project can be build using `make`. Native BSD make, not GNU make. See [here](http://alfix.gitlab.io/bsd/gnu/coding/2017/01/28/gnu-make-vs-bsd-make.html) for basic differences:

```sh
cd $PROJECT_ROOT/console_app
# or
cd $PROJECT_ROOT/gui_app

make -j4
make clean
```

## Development

- [Setup git remote for upstream](https://help.github.com/en/articles/configuring-a-remote-for-a-fork)
- [Update fork form upstream](https://help.github.com/en/articles/syncing-a-fork)
