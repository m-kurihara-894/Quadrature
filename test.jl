using FastGaussQuadrature, LinearAlgebra
x, w = gausslegendre(10)
f(x) = (1-x^2)^(1/2)
result = dot(w, f.(x))
println("Semicircle Result: ", result)
println("Error: ", result - π/2)
println("Error per: ", (result - π/2) / (π/2))