=begin
Problem:
-Select an element out of an array, if the index is a fibonacci number

High Level Algo:
1. Determine fibonaci number up to index of arg_arr, store these numbers in fib_arr
2. Initalize new array called arr
3. Iterate through fib_arr w/ parameter |num|
  - push arg_arr[num] into arr
  - break when gone through fib_arr elements
=end

def fib_arr_nums(n)
  fib_arr = []
  num1 = 0
  num2 = 1
  
  return [1] if n == 1 || n == 2
  
  while num2 <= n
   fib_num = num1 + num2
   fib_arr << fib_num if fib_num <= n
   num1 = num2
   num2 = fib_num
  end
   
  fib_arr
 end
 
 def fib_idx_arr(arg_arr)
  arr = []
   
  fib_arr = fib_arr_nums(arg_arr.length)
   
  fib_arr.each do |i|
   arr << arg_arr[i] 
  end
   
  arr
 end
 
 arr = (1..10).to_a
 p fib_idx_arr(arr)