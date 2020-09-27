def digits_list(numbers)
  numbers
    .to_s
    .split(//)
    .map(&:to_i)
end

p digits_list(12344) == [1, 2, 3, 4, 4]