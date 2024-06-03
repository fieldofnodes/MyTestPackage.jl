using MyTestPackage
using Test

@testset "MyTestPackage.jl" begin
    @test !ismissing(generic_function())
end