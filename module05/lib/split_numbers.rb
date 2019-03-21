def split_numbers(arr)
  [arr.select(&:even?), arr.select(&:odd)]
end