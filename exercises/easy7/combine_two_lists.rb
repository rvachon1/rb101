def interleave(array1, array2)
  counter = 0
  alternating_array = []

  while counter < array1.length
    alternating_array << array1[counter]
    alternating_array << array2[counter]
    counter += 1
  end
  
  alternating_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']