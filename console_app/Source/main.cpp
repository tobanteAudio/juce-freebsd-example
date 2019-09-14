#include "JuceHeader.h"

String readFile (const File& fileToRead)
{
    if (! fileToRead.existsAsFile()) // [1]
        return "";

    auto fileText = fileToRead.loadFileAsString();
    return fileText;
}


int main(int, char **)
{
  auto path = File("Source/main.cpp");

  std::cout << "TEST\n";
  std::cout << readFile(path) << '\n';

  DBG("TEST");

  return 0;
}
