def average(num_array)
  avg = num_array.sum.to_f / num_array.size

  avg.round(2)
end

def average2(num_array)
  num_array.reduce(:+).to_f / num_array.count
end


puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])