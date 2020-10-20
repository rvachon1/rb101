# Problem

# Input Array Output Array
# Rules 
# - Positive Integers
# - Output is running total of array by index

# ALGORITHM

# Iterate through each number
# Keep running sum of numbers in local variable
# Push that total to the output array after each iteration

def running_total(array_integers)
  current_total_int = 0
  running_total = []

  array_integers.each do |i|
    current_total_int = current_total_int + i
    running_total.push(current_total_int)
  end

  running_total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])  == [14, 25, 32, 47, 67]
p running_total([3])  == [3]
p running_total([])  == []