def sum(integer)
  sum_array = []
  
  loop do
    division, remainder = integer.divmod(10)
    sum_array << remainder
    break if division == 0
    integer = division
  end

  sum_array.reduce(:+)
end

def loopless_sum(integer)
  integer
    .to_s
    .chars
    .reduce(0) { |sum, num| sum + num.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts loopless_sum(23) == 5
puts loopless_sum(496) == 19
puts loopless_sum(123_456_789) == 45