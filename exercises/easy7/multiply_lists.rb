def multiply_list(array1, array2)
  product_array = []

  array1.each_with_index do |num, i|
    product_array << (num * array2[i])
  end

  product_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]