# CheckImports.jl

[![Build Status](https://travis-ci.org/ChrisRackauckas/CheckImports.jl.svg?branch=master)](https://travis-ci.org/ChrisRackauckas/CheckImports.jl) [![Build status](https://ci.appveyor.com/api/projects/status/s5jcv6ys71ir9clw?svg=true)](https://ci.appveyor.com/project/ChrisRackauckas/checkimports-jl)

# Note

That package is superseded by functionality from base. Please instead use:

```julia
isdefined(Main,:Module)
```


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
