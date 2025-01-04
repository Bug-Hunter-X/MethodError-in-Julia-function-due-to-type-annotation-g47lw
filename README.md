# Julia Type Stability Bug

This repository demonstrates a common error in Julia related to type stability and function annotations. The `bug.jl` file contains a function that works correctly when no type annotation is used, but throws a `MethodError` when a type annotation (e.g., `::Int64`) is added. The `bugSolution.jl` shows how to fix this by using a more flexible type annotation or avoiding type annotations if not strictly necessary.

## How to reproduce
1. Clone this repository.
2. Run `bug.jl` (this will show the error).
3. Run `bugSolution.jl` (this will show the corrected behavior).

## Explanation
Adding type annotations improves performance by enabling Julia's compiler to optimize the code better. However, overly restrictive type annotations can make the code less flexible and lead to errors. In the original code, specifying `::Int64` only allows integers. Attempting to pass a floating-point number causes a `MethodError` because no method is defined for the function with a `Float64` input.