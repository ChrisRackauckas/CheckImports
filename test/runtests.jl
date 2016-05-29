using CheckImports
using Base.Test

println(modulechildren(Main))
@test isimported("CheckImports")
@test !isimported("GrowableArrays",m=Main)
Pkg.add("BenchmarkLite")
using BenchmarkLite
@test isimported("GrowableArrays",m=Main)
