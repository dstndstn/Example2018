using Test
using Example2018

@show Polynomial([1,2,3])
@show evaluate(Polynomial([1,2,3]), 2)
@show Polynomial([1,2,3]) + Polynomial([4,5])
@show 3 * Polynomial([1,2,4,42])
@show deriv(Polynomial([1,1,1,1,1]))
@show deriv(Polynomial([0,0,1,0,0]))




@test 1 == 1

@testset "Polynomials form a ring" begin
  z = Polynomial([0])
  for n in 1:100
    deg = rand(0:100)
    p = Polynomial(rand(-1000:1000, deg+1))
    @test p+z == p
    @test z+p == p
    @test p + (-p) == z
  end
end
