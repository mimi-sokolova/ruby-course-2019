def sum_of_digits(n)
  n_abs = n.abs
  sum = 0
  while n_abs >= 10
    sum += n_abs % 10
    n_abs = n_abs/10
  end
return sum+n_abs
end

def to_digits(n)
array = []
n_abs = n.abs
while n_abs >= 10
  array.append(n_abs % 10)
  n_abs = n_abs/10
end
  array.append(n_abs)
  return array.reverse
end

def to_number(digits)
  l = digits.length
  digits = digits.reverse
  number =0
  for i in (0..l) do
    number += digits[i].to_i * (10**i)
  end
  return number
end

def count_vowels(str)
  str = str.downcase
  array = str.split(//)
  l = (array.length.to_i) -1
  vowels = "aeiouy"
  count = 0
  for i in (0..l) do
    if vowels.include?(array[i].to_s)
      count += 1
    end
  end
  return count
end

def count_consonants(str)
  str = str.downcase
  array = str.split(//)
  l = (array.length.to_i) -1
  vowels = "bcdfghjklmnpqrstvwxz"
  count = 0
  for i in (0..l) do
    if vowels.include?(array[i].to_s)
      count += 1
    end
  end
  return count
end

def prime_number(number)
  is_prime = false
  if number==1 || number==2
    is_prime = true
  elsif
    for i in (2..(number-1))
      if number % i > 0 || number/i > 1
      is_prime = false

    end
  end
  return is_prime
end
end

def fact_digits(n)
  array= to_digits(n)
  sum = 0
  x=[]
  for i in (0..(array.length.to_i-1))
    x.append(1)
    for y in (1..array[i])
      x[i] *= y
    end
  end
  for i in ((0..(x.length.to_i-1)))
    sum += x[i]
  end
  return sum


  end

def fibonacci(n)

end

def fib_number(n)


end

def palindrome(n)

end

def char_histogram(string)

end