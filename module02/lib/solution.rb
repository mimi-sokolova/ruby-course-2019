IS_TRUE = true
IS_FALSE = false
PANCAKE_INGREDIENTS = {'flour' => 2, 'eggs' => 4, 'milk' => 200, 'butter' => false, 'salt' => 0.001}
FIBONACCI_NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

# Method is adding a and b
def num_add(a, b)
  a + b
end
# Method is subtracts a and b
def num_sub(a, b)
  a - b
end
# Method is multiplies a and b
def num_mul(a, b)
  a * b
end
# Method divides a to b
def num_div(a, b)
  if b.zero?
    puts 'b is zero! You can not dived by zero!'
  else a / b
  end
end

def num_floor(a, b)
  if b.zero?
    puts 'b is zero! You can not dived by zero!'
  else
    a.divmod(b)[0]
  end
end

def num_rem(a, b)
  if b.zero?
    puts 'b is zero! You can not dived by zero!'
    else
    a.remainder(b)
  end
end

def ingredient_exists(ingr, hash)
hash.key?(ingr)
end

def fatten_pancakes(hash)
hash1 = hash.clone()
  hash1['eggs'] = 6
  hash1['butter'] = true
  return hash1
end

def add_sugar(hash)
  hash1 = hash.clone()
  hash1['sugar'] = true
  return hash1
end

def remove_salt(hash)
  hash1 = hash.clone()
  hash1.delete('salt')
  return hash1
end

def add_fibonacci(arr)
  arr.append(arr[-1] + arr[-2])
  return arr
end

def fib_exists(arr, n)
arr.include?(n)
end

def which_fib(arr, n)
  arr.index(n)+1
end

def digits_to_array(digit)
digit.to_s.split(//)
end

def digits_to_array_reversed (digit)
  digit.to_s.split(//).reverse
end

def grayslace_histogram(image)

for i in (image)
  puts i
  arr = arr.concat(i)
end
end


# grayslace_histogram([[1,2,5,5,5,5]])

def max_span(list)

end