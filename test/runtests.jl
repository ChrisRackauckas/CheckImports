using CheckImports
using Base.Test

println(modulechildren(Main))
@test isimported("CheckImports")
@test !isimported("BenchmarkLite",m=Main)
Pkg.add("BenchmarkLite")
using BenchmarkLite
@test isimported("BenchmarkLite",m=Main)
