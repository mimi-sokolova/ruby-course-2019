def sum_of_digits(n)
  sum = 0
  calc(n,sum)
end

def to_digits(n)
  array=[]
  calc(n, array).reverse
end

def to_number(digits)
  n = 0
  for i in (0...digits.length)
    n = digits[i] + (n * 10)
  end
   n
end

def count_vowels(str)
  str = str.downcase
  l = str.length - 1
  vowels = 'aeiouy'
  count = 0
  for i in (0..l) do
    count += 1 if vowels.include?(str[i])
  end
  count
end

def count_consonants(str)
  str = str.downcase
  vowels = 'bcdfghjklmnpqrstvwxz'
  count = 0
  for i in (0..str.length - 1) do
    count += 1 if vowels.include?(str[i])
  end
  count
end

def prime_number(number)
  for i in (2..number / 2)
    return false if number % i == 0
  end
  true
end

def fact(n)
  y = 1
  n.downto(2) {|i| y *= i}
  y
end

def fact_digits(n)

  array = to_digits(n)
  sum = 0
  array.each {|z| sum += fact(z)}
  sum
end

def fibonacci(n)
  fib_array = [1, 1]

  for i in (2..n)
    fib_array[i] = (fib_array[i - 1]) + (fib_array[i - 2])
  end
  fib_array.take(n)
end

def fib_number(n)
  fib = (fibonacci(n).map{|x| x = to_digits(x)}).flatten
  to_number(fib)
end

def palindrome(m)
  n = m.to_s
  length = n.length
  for i in(0..length/2)
    return false if n[i] != n[length - i - 1]
  end

  true
end

def char_histogram(string)
  array = string.split(//)
  array.uniq.map { |x| [x, array.count(x)] }.to_h
  #a = []
  #array.each {|x| a.append([x, array.count(x)])}
  #a.uniq.to_h
end

def calc(n, a)
  n_abs = n.abs
  while n_abs > 0
    if a.is_a?(Array)
      a.append(n_abs % 10)
    else
      a += n_abs  % 10
    end
    n_abs /= 10
  end
   a
end
