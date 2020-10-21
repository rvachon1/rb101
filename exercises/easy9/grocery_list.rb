def buy_fruit(array)
  fruit_array = []

  array.each do |fruit, num|
    num.times { |i| fruit_array << fruit }
  end

  fruit_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]