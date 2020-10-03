def oddities(array)
  count = 1
  odd_elements = []

  array.each do |i|
    if count.odd?
      odd_elements << i
      count += 1
    else
      count +=1
    end
  end

  odd_elements
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []