module CheckImports

"""
`modulechildren(m::Module)`

Returns the modules in m
"""
modulechildren(m::Module) = filter(x->isa(x, Module), map(x->m.(x), names(m, true)))

"""
`isimported(pkg::AbstractString;m::Module=Main)`

Returns true if module "pkg" is defined in m, otherwise false. m defaults to Main
"""
isimported(pkg::AbstractString;m::Module=Main)= maximum(map(string,modulechildren(m)).==pkg)

export modulechildren, isimported

end # module
