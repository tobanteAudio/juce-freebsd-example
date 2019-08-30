project(juce-freebsd-static-library)

set(juce_source
    JuceLibraryCode/include_juce_audio_basics.cpp
    JuceLibraryCode/include_juce_audio_formats.cpp
    JuceLibraryCode/include_juce_core.cpp
    JuceLibraryCode/include_juce_data_structures.cpp
    JuceLibraryCode/include_juce_dsp.cpp
    JuceLibraryCode/include_juce_events.cpp
)
create_juce_library_target(${PROJECT_NAME}_juce "${juce_source}")

