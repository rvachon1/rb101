arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# new_arr = arr.map do |hsh|
#   hsh.transform_values { |value| value += 1 }
# end

new_arr = arr.map do |hsh|
  new_hsh = hsh.dup

  new_hsh.each do |key, value|
    new_hsh[key] += 1
  end
end

p new_arr
p arr