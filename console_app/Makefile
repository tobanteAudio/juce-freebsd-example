default: app

src = $(wildcard JuceLibraryCode/*.cpp)
obj = $(src:.cpp=.o)

COMPILER_FLAGS=-g -std=c++17
COMPILER_WARNINGS=-Wall -Wextra -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable

MODULEPATH=/usr/home/tobante/Developer/moderncircuits/juce-freebsd-example/3rd_party/JUCE/modules
JUCELIBCODE=./JuceLibraryCode

LDFLAGS = -lpthread -lexecinfo #-lGL -lglut -lpng -lz -lm

INC=$(MODULEPATH) $(JUCELIBCODE)
INC_PARAMS=$(foreach d, $(INC), -I$d)

DEFINES=#-DDEBUG=1 -D_DEBUG=1

.PHONY: app
app:
		$(CXX) $(COMPILER_FLAGS) $(COMPILER_WARNINGS) $(INC_PARAMS) $(DEFINES) $(LDFLAGS) Source/main.cpp  JuceLibraryCode/include_juce_audio_basics.cpp JuceLibraryCode/include_juce_audio_formats.cpp JuceLibraryCode/include_juce_core.cpp JuceLibraryCode/include_juce_data_structures.cpp JuceLibraryCode/include_juce_dsp.cpp JuceLibraryCode/include_juce_events.cpp -o app

.PHONY: clean
clean:
		rm -f $(obj) app
