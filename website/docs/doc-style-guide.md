---
id: doc-style-guide
title: Style Guide
---

## Code Format

Coderrect OpenRace adopts [Google's C++ Style Guide](https://google.github.io/styleguide/cppguide.html) with one customization:

```
ColumLimit: 120 // changed from 80 -> 120
```

### Using Clang Format

To enforece the code format when contributing to Coderrect OpenRace, a `.clang-format` file is provided at the root path of the project.

You can integrate it with your editor to enable auto-formatting.

### VSCode Integration

To use `.clang-format` in Visual Studio Code, first make sure the `.clang-format` is correctly located at the root of the project.
Then change configuration `C_Cpp:Clang_format_style` to `file`.

![vscode-integration](/img/vscode-clang-format.png)

### Running clang-format manually
`clang-format` can also be run manually on an individual file:

```
clang-format -i -style=file file.cpp
```

Or on the entire project directory (careful to run this from within this project's directory as it will recursively overwrite all files ending in .h or .cpp in this directory and all subdirectories).

```
cd OpenRace/
find . -iname *.h -o -iname *.cpp | xargs clang-format -i -style=file
```

## General C++ Coding Style

Refer to [C++ Core Guidelines](http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines) for general C++ coding style.