Building a portable OCaml bytecode embedded in C project
=========================================================

This repository illustrates how to create a portable C package from
 [OCaml](https://ocaml.org/) source code.  The OCaml code used was taken
 directly from the book [Real World OCaml](https://realworldocaml.org/).  My
 only contribution here was to extract the OCaml bytecode runtime which is ~3.5
 MB from the OCaml compiler [source](https://github.com/ocaml/ocaml) and create
 the required Makefiles.  I did this to make things as simple to follow as
 possible while demonstrating how you would go about doing this in practice.
 Hopefully others will find this useful.

Requirements
------------

The OCaml runtime used is from OCaml version 4.07.1 and so you need to have this
version of the compiler on your system.  You will also need to have a C compiler
and the termcap library installed.  If you are using windows you will need
[MinGW](http://mingw.org), [Cygwin](https://cygwin.com/) or some other tool that
provides a POSIX API.

Building
--------

Generate the C package by changing into the repo directory and running make:

```bash
$ cd ocaml_c_pkg
$ make
```

this will create a subdirectory called `pkg/` with the generated C code,
`main.c`, OCaml bytecode runtime source and `Makefile`.  To build the package:

```bash
$ cd pkg
$ make
```

If the build fails it likely means that the OCaml bytecode runtime isn't
supported on your particular platform.  In theory this should work on any system
with a functioning C compiler.

License
-------

I've used the same license as the authors of Real World OCaml.  Of course the
OCaml bytecode runtime taken from the OCaml compiler is under its own license (LGPL
2.1) and a copy is included. 
