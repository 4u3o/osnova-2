arr = [0, 1]

loop do
  new_value = arr[-1] + arr[-2]
  break if new_value >= 100

  arr << new_value
end
