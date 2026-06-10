# Odin by Example

As I am learn Odin, I am gathering a set of examples illustrating the different features of the language and decided to share them in the form of an online book.

## Description

This repository contains a set of Odin examples (under `./examples/`) and a description for each of them (under `./content/docs/`).

The examples cover the language features and provide some small demo/experiments which demonstrate how to put the features together in real programs.

## Getting Started

You can just read the book online but if you decide to clone the repository then:

- [Install Odin on your machine](https://odin-lang.org/docs/install/).
- Clone the repository: `git clone https://github.com/rmonnet/odin-by-example`.
- [Install Hugo](https://gohugo.io/getting-started/) (the site generator).
- Initialize the Hugo book theme: `git submodule update --init --remote`.
- If you want to use the task manager (`just`), [install just](https://just.systems/).
- You can generate a preview of the book with `just doc-preview`.
- If you are using the just build system, type `just` to see a list of the available tasks.
- If you don't want to use just, then just look in the `Justfile` for the definition of the tasks.
  All the tasks are very simple and can be performed via the command line (or your favorite automation tool).

### Dependencies

While Hugo and Odin run on Windows, the build tasks (`Justfile`) are meant to run on a unix-style environment (Linux, macOs, Windows WSL, Git for Windows bash shell).

- [Odin programming language](https://odin-lang.org/).
- [Hugo Site Generator](https://gohugo.io/).
- [Hugo Book Theme](https://github.com/alex-shpak/hugo-book/).
- (Optional)[Just Task Manager](https://just.systems/)

## Other Odin Resources

- [Odin Overview](https://odin-lang.org/docs/overview/)
- [Odin (official list of) Examples](https://github.com/odin-lang/examples)
- [Odinlings - Odin Exercises](https://codeberg.org/jdugan6240/odinlings)
- [Exercism Odin Track](https://exercism.org/tracks/odin)
- [Understanding the Odin Programming Language](https://odinbook.com/) 

## Copyright and License

The book and code examples are distributed under the [Creative Common CC By 4.0 license](https://creativecommons.org/licenses/by/4.0/).
The material is copyright (c) 2026 Robert Monnet.

## Acknowledgments

- [Ginger Bill](https://www.gingerbill.org/) and the [Odin development team](https://github.com/odin-lang/Odin) for an awesome, easy to pick up, programming language.
- [Mark McGranaghan](https://markmcgranaghan.com/) and [Eli Bendersky](https://eli.thegreenplace.net/) for showing me what to do with the [Go by Example Website](https://gobyexample.com/).
- The Boring College Organization for another get example, [Zig by Example](https://github.com/boringcollege/zig-by-example/).
- [Alex Shpak](https://github.com/alex-shpak) for the excellent Book Theme for Hugo.
