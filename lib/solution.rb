# Method returns the constant 4 for any input parameter.
def f_c(x)
  return 4
end

# Method calculate the formula f(x) = a*x + b
public def f_x(x, a, b)
f = (x*a)+b
  return f
end

# Method calculates the sum of f(x) with a and b from 1 to 3
def sum(x)
  sum = 0
  for i in 1..3 do
sum = sum + f_x(x, i,i)
  end
  return sum
end