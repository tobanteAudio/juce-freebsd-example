#CXX = clang
COMPILER_FLAGS=-g -std=c++17
COMPILER_WARNINGS=-Wall -Wextra -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable
CXXFLAGS = ${COMPILER_FLAGS} ${COMPILER_WARNINGS}

LDFLAGS = -lpthread -lexecinfo #-lGL -lglut -lpng -lz -lm

MODULEPATH=./../3rd_party/JUCE/modules
JUCELIBCODE=./JuceLibraryCode

INCLUDEDIR=-I${MODULEPATH} -I${JUCELIBCODE}

OUTPUT = console_app.out
SOURCES = Source/main.cpp JuceLibraryCode/include_juce_audio_basics.cpp JuceLibraryCode/include_juce_audio_formats.cpp JuceLibraryCode/include_juce_core.cpp JuceLibraryCode/include_juce_data_structures.cpp JuceLibraryCode/include_juce_dsp.cpp JuceLibraryCode/include_juce_events.cpp

OBJECTS=${SOURCES:.cpp=.o}

all : ${OUTPUT}

clean:
	rm -f ${OUTPUT} ${OBJECTS} *.o *~

${OUTPUT}: ${OBJECTS}
	${CXX} ${LDFLAGS} ${OBJECTS} -o ${OUTPUT}

.cpp.o:
	${CXX} ${CXXFLAGS} ${INCLUDEDIR} -c ${.IMPSRC} -o ${.TARGET}

stats:
	@echo ${OUTPUT}
	@echo ${OBJECTS}
