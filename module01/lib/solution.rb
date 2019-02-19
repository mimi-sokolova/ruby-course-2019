# Method returns the constant 4 for any input parameter.
def f_c(x=nil)
  return 4
end

# Method calculate the formula f(x) = a*x + b
public def f_x(x, a, b)
  (x*a)+b
end

# Method calculates the sum of f(x) with a and b from 1 to 3
def sum(x)
 f_x(x, 1,1) + f_x(x, 2,2) + f_x(x, 3,3)
end