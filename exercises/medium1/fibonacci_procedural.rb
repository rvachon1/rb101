def fibonacci_last(int)
  counter = 2
  fib_num = 0
  num_1 = 1
  num_2 = 1

  return 1 if int <= 2
  while counter < int
    fib_num = num_1 + num_2
    num_2 = num_1
    num_1 = fib_num
    counter += 1
  end
  
  fib_num % 10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4