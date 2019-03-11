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
  digits.join.to_i
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
  primes = [2,3,5,7]
  if number==1 || number==2
    is_prime = true
  elsif
    for i in (primes.length-1)
      if number % primes[i] > 0 || number/i > 1
      is_prime = true

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
  fib_array = [1,1]
  for i in (2..n)
    fib_array[i] = (fib_array[i-1].to_i)+(fib_array[i-2].to_i)
  end
  return fib_array.take(n)
end

def fib_number(n)
  to_number(fibonacci(n))
end

def palindrome(n)
  n.to_s == n.to_s.reverse
end

def char_histogram(string)
  hash = {}
  array = string.split(//)

  for i in (0 ..(array.length-1))
    count = string.
    bash = {:array[i] => count}
  end

end