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
    number += digits[i].to_i * (10^i)
  end
  return number
end

def count_vowels(str)
  array = str.split(//)
  l = array.length
  vowels = "aeiouy"
  count = 0
  for i in (0..l) do
    if vowels.include?(array[i].to_s)
      #array[i].to_s == "a" or array[i].to_s == "e" or array[i].to_s == "i" or array[i].to_s == "o" or array[i].to_s == "u" or array[i].to_s == "y"
      count += 1
    end
  end
  return count
end

def count_consonants(str)

end

def prime_number(number)

end

def fact_digits(n)

end

def fibonacci(n)

end

def fib_number(n)

end

def palindrome(n)

end

def char_histogram(string)

end