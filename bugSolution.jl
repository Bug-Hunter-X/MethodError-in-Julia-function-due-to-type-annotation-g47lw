```julia
# Solution 1: Use a more general type annotation
function my_function(x::Real)
  if x > 0
    return x^2
  else
    return -x
  end
end

result = my_function(-5)
println(result) # Output: 5

result = my_function(5.0) 
println(result) # Output: 25.0

# Solution 2: Remove the type annotation entirely
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

result = my_function(-5)
println(result) # Output: 5

result = my_function(5.0) 
println(result) # Output: 25.0
```