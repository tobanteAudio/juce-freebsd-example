#CXX = clang
COMPILER_FLAGS=-g -std=c++14
COMPILER_WARNINGS=-Wall -Wextra -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable
CXXFLAGS = ${COMPILER_FLAGS} ${COMPILER_WARNINGS}

LOCAL_LIBRARY_PATH=/usr/local/lib
LDFLAGS = -lpthread -lexecinfo -lcurl -lfreetype -lXext -lX11 #-lGL -lglut -lpng -lz -lm

MODULEPATH=./../3rd_party/JUCE/modules
JUCELIBCODE=./JuceLibraryCode
LOCAL_INCLUDE_PATH=/usr/local/include

INCLUDEDIR=-I${MODULEPATH} -I${JUCELIBCODE} -I${LOCAL_INCLUDE_PATH} -I./Source -I/usr/local/include/freetype2

OUTPUT = gui_app.out
SOURCES = Source/Main.cpp Source/MainComponent.cpp JuceLibraryCode/include_juce_core.cpp JuceLibraryCode/include_juce_data_structures.cpp JuceLibraryCode/include_juce_cryptography.cpp JuceLibraryCode/include_juce_events.cpp JuceLibraryCode/include_juce_graphics.cpp JuceLibraryCode/include_juce_gui_basics.cpp JuceLibraryCode/include_juce_gui_extra.cpp

OBJECTS=${SOURCES:.cpp=.o}

all : ${OUTPUT}

clean:
	rm -f ${OUTPUT} ${OBJECTS} *.o *~

${OUTPUT}: ${OBJECTS}
	${CXX} -L${LOCAL_LIBRARY_PATH} ${LDFLAGS} ${OBJECTS} -o ${OUTPUT}

.cpp.o:
	${CXX} ${CXXFLAGS} ${INCLUDEDIR} -c ${.IMPSRC} -o ${.TARGET}

stats:
	@echo ${OUTPUT}
	@echo ${OBJECTS}
