arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.map do |hsh|
  hsh.select do |_, num_arr|
    num_arr.all? { |i| i.even? }
  end
end

p new_arr

new_arr1 = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_arr1