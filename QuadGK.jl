import Pkg
Pkg.activate(".")
using QuadGK
result = quadgk(x -> (1-x^2)^(1/2), -1, 1)[1]
println("Semicircle Result: ", result)
println("Error: ", result - π/2)
println("Error per: ", (result - π/2) / (π/2))