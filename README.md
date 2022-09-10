# Acor.jl

This is a wrapper around [Jonathan
Goodman](https://www.math.nyu.edu/~goodman/)'s
[Acor](https://www.math.nyu.edu/~goodman/software/acor).
This particular version is based on [Dan
Foreman-Mackey](https://github.com/dfm)'s refactoring of
Jonathan's code, which he wrote for his [Python port of
Acor](https://github.com/dfm/acor).

## INSTATLLATION

Download all the files from this repo (including the
Makefile and the .c and .h), make sure Acor.jl is in your
Julia's `LOAD_PATH` (or your environment variable
`JULIA_LOAD_PATH`), and load.  This should run `make` to
compile the C code automatically the first time you run it.

## Caveats

<ol>

<li>The Julia wrapper is pretty "thin" -- it doesn't do any
sanity checks.</li>

<li>The Makefile is bare-bones.  It works on recent versions
of macOS with the system `cc`, and on GNU/Linux with `gcc`.
I don't have a Windows machine to test things on, but it
should require only minimal work.</li>

</ol>
