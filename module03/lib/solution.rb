def sum_of_digits(n)
  n_abs = n.abs
  sum = 0
  while n_abs > 0
    sum += n_abs % 10
    n_abs = n_abs / 10
  end
  return sum
end

def to_digits(n)
  array = []
  n_abs = n.abs
  while n_abs > 0
    array.append(n_abs % 10)
    n_abs = n_abs / 10
  end
  return array.reverse
end

def to_number(digits)
  n = 0
  for i in (0...digits.length)
    n = digits[i] + (n * 10)
  end
  return
end

def count_vowels(str)
  str = str.downcase
  l = (str.length) - 1
  vowels = "aeiouy"
  count = 0
  for i in (0..l) do
    if vowels.include?(str[i])
      count += 1
    end
  end
  return count
end

def count_consonants(str)
  str = str.downcase
  vowels = "bcdfghjklmnpqrstvwxz"
  count = 0
  for i in (0..str.length - 1) do
    if vowels.include?(str[i])
      count += 1
    end
  end
  return count
end

def prime_number(number)
  for i in (2..number / 2)
    if number % i == 0
      return false
    end
  end
  return true
end

def fact(n)
  y = 1
  n.downto(2) {|i| y *= i}
  return y
end

def fact_digits(n)

  array = to_digits(n)
  sum = 0
  array.each {|z| sum += fact(z)}

  return sum
end

def fibonacci(n)
  fib_array = [1, 1]

  for i in (2..n)
    fib_array[i] = (fib_array[i - 1]) + (fib_array[i - 2])
  end
  return fib_array.take(n)
end

def fib_number(n)
  to_number(fibonacci(n))
end

def palindrome(m)
  n = m.to_s
  length = n.length
  for i in(0..length/2)
    if n[i] != n[length - i - 1]
      return false
    end
  end
  return true
end


def char_histogram(string)
  array = string.split(//)
  array.uniq.map { |x| [x, array.count(x)] }.to_h
end