# Promblem - When given a positive integer, find all multiples of 3 and 5 up to and including that integer

# Input: integer, Output: Integer

# Algorithm:

# Find all integers from 1 to number
#   - Count to number, iterating by 3, storing each value in an Array, until counter >= number
#   - Repeat for 5
# Sum integers

def multiples_x(number, multiple)
  current_multiple = multiple
  multiples = []

  while current_multiple <= number
    multiples << current_multiple
    current_multiple += multiple
  end

  multiples
end

def multisum(number)
  multiples_x(number, 3)
    .concat(multiples_x(number, 5))
    .uniq
    .reduce(*:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
