def stringy(integer, start_num=1)
  string_101 = ""
  integer.times do |i|
    string_101 << (i.even? ? start_num.to_s : "0") if start_num == 1
    string_101 << (i.even? ? start_num.to_s : "1") if start_num == 0
  end

  string_101
end

puts stringy(6, 0) == '010101'
puts stringy(9, 1) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 1) == '1010101'