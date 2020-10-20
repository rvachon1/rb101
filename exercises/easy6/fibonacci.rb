def find_fibonacci_index_by_length(digits)
  count = 3
  fib_array = [1, 1]

  loop do 
    fib_array << fib_array[-1] + fib_array[-2]
    count += 1
    break if (fib_array[-1] + fib_array[-2]).digits.count == digits
    fib_array.shift
  end

  p count
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847