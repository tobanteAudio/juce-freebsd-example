default: app

COMPILER_FLAGS=-g -std=c++17
COMPILER_WARNINGS=-Wall -Wextra -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable

MODULEPATH=./../3rd_party/JUCE/modules
JUCELIBCODE=./JuceLibraryCode

INC=$(MODULEPATH) $(JUCELIBCODE)
INC_PARAMS=$(foreach d, $(INC), -I$d)

.PHONY: app
app:
		$(CXX) -c $(COMPILER_FLAGS) $(COMPILER_WARNINGS) $(INC_PARAMS) $(DEFINES) JuceLibraryCode/include_juce_audio_basics.cpp JuceLibraryCode/include_juce_audio_formats.cpp JuceLibraryCode/include_juce_core.cpp JuceLibraryCode/include_juce_data_structures.cpp JuceLibraryCode/include_juce_dsp.cpp JuceLibraryCode/include_juce_events.cpp

.PHONY: clean
clean:
		rm -f *.o
