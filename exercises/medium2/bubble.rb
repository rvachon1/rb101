def bubble_sort!(array)
  swap_count = ''
  counter = 0

  while swap_count != 0
    swap_count = 0
    counter = 0
    while counter < (array.length - 1)
      if array[counter] > array[counter + 1] 
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
        swap_count += 1
      end
      counter += 1
    end
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)