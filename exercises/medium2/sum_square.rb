def square_of_sum(int)
  (1..int).reduce(&:+) ** 2
end

def sum_of_squares(int)
  (1..int).reduce { |acc, num| acc += num ** 2 }
end

def sum_square_difference(int)
  square_of_sum(int) - sum_of_squares(int)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150