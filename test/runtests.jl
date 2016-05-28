using CheckImports
using Base.Test

println(modulechildren(Main))
@test isimported("CheckImports")
@test !isimported("GrowableArrays",m=Main)
Pkg.add("GrowableArrays")
using GrowableArrays
@test isimported("GrowableArrays",m=Main)
