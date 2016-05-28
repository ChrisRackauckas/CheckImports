# CheckImports

This is a lightweight package to make it easy to check if a user has imported
(or /using) a specific package. To see if a package is imported, simply call

```julia
isimported("Atom",m=Main)
```

and this will return a boolean which is true if Atom is imported (/using) in the
module `m` (which defaults to `Main`), and false otherwise. Also exported is the
helper function

```julia
modulechildren(Main)
```

which returns a vector of the imported modules.

## Installation

To install the package, use

```julia
Pkg.add("CheckImports")
using CheckImports
```

## Acknowledgements

I would like to acknowledge Mike Innes for the original idea for `modulechildren`.
