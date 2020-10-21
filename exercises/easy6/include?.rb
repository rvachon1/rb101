def include?(array, item)
  counter = 0
  boolean = false

  while counter < array.length
    boolean = true if array[counter] == item
    counter += 1
  end

  boolean
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false