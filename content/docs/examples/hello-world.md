---
weight: 2
---
# Hello World

Let's start with the classic Hello World program.

{{< code-snippet file="examples/hello-world/hello-world.odin" lang="odin" >}}

All Odin code is contained in a package.
All files in a directory belongs to the same package and must share a package name (here `main`) [^1].

[^1]: The package name (in `package main`) is used for linking but doesn't represent the name of the package when importing (more on that later).
All files in the same directory must share the same package name.

Odin uses the term procedure rather than function, here represented by the keyword `proc`.
The syntax `main :: proc()` introduces a new procedure definition where `main` is the name of the procedure.
In Odin the main entry point doesn't take its command line parameters from the argument list [^2].

[^2]: Odin takes its command line parameters from the `args` variable in the `os` package.

Printing to the standard output is performed using the `println()` procedure from the `fmt` package. An object from a package is referenced by prefixing the object with the package name (`fmt.println()`).

Finally packages must be imported (with the `import` keyword) before they can be used.
Odin main library is located in the `core` container and package imports are referenced by their container followed by their package import name [^3]. 

[^3]: While the package linking name is defined by the `package NAME` statement at the top of the file, the package import name is defined as the basename of the directory containing the package.
For example, the random procedures provided in the directory `core/math/rand` are imported with `import core:math/rand` but referenced by `rand.`.

### Running the program

You can build an Odin program using `odin build <path to main entry point>` but you can also just run it with `odin run <path to main entry point>`.

{{< code-snippet file="examples/hello-world/output.txt" lang="text" >}}
