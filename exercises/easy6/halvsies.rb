def halvsies(array)
  half_rounded_up = (((array.length)/2.0).ceil) 
  other_half = array.length - half_rounded_up

  half2 = array.select { |i| array.index(i) >= half_rounded_up }
  half1 = array.select { |i| array.index(i) < half_rounded_up }
  
  [half1, half2]
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]