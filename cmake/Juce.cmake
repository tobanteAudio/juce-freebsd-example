# Warnings
add_library(juce_disable_warnings INTERFACE)
add_library(tobanteAudio::DisableJuceWarnings ALIAS juce_disable_warnings)
if(MSVC)
else()
    target_compile_options(juce_disable_warnings INTERFACE
                    -Wno-conversion
                    -Wno-double-promotion
                    -Wno-implicit-fallthrough
                    -Wno-old-style-cast
    )

    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
        target_compile_options(juce_disable_warnings INTERFACE
                    -Wno-useless-cast
        )
  else()
  endif()
endif()

# Library traget
function(CREATE_JUCE_LIBRARY_TARGET TARGET_NAME TARGET_SOURCE)
    # Threads
    set(THREADS_PREFER_PTHREAD_FLAG ON)
    find_package(Threads REQUIRED)

    # Library Target
    add_library(${TARGET_NAME} STATIC ${TARGET_SOURCE})
    # Includes
    target_include_directories(${TARGET_NAME} PUBLIC
        ${CMAKE_SOURCE_DIR}/3rd_party/JUCE/modules
        ${PROJECT_SOURCE_DIR}/JuceLibraryCode
    )
    # Link
    target_link_libraries(${TARGET_NAME} PUBLIC
      tobanteAudio::DisableJuceWarnings
        Threads::Threads
        ${CMAKE_DL_LIBS}
    )

    # Linux deps
    if(UNIX AND NOT APPLE)
        find_package(Freetype REQUIRED)
        find_package(X11 REQUIRED)
        find_package(ALSA REQUIRED)
        find_package(CURL REQUIRED)
        find_package(PkgConfig REQUIRED)
        pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
        target_include_directories(${TARGET_NAME} PUBLIC ${FREETYPE_INCLUDE_DIRS} ${GTK3_INCLUDE_DIRS} ${ALSA_INCLUDE_DIRS} ${X11_INCLUDE_DIR} ${CURL_INCLUDE_DIR})
        target_link_libraries(${TARGET_NAME} PUBLIC ${FREETYPE_LIBRARIES} ${GTK3_LIBRARIES} ${X11_LIBRARIES} ${ALSA_LIBRARIES} ${CURL_LIBRARIES})
    endif()
endfunction()


# Standalone traget
function(CREATE_JUCE_STANDALONE_TARGET TARGET_NAME TARGET_SOURCE)
    # Target
    add_executable(${TARGET_NAME} ${TARGET_SOURCE})
    # Include
    target_include_directories(${TARGET_NAME} PRIVATE
        ${PROJECT_SOURCE_DIR}/Source
    )
    # Defines
    target_compile_definitions(${TARGET_NAME} PRIVATE
        # _CRT_SECURE_NO_WARNINGS
        # DONT_SET_USING_JUCE_NAMESPACE=1
    )

    # Link
    target_link_libraries(${TARGET_NAME} PRIVATE
        tobanteAudio::CompilerOptions
        ${TARGET_NAME}_juce
    )
endfunction()
