def string_to_integer(string)
  int_array = []

  string.chars.each do |i|
    case i
    when "0" then int_array.push(0)
    when "1" then int_array.push(1)
    when "2" then int_array.push(2)
    when "3" then int_array.push(3)
    when "4" then int_array.push(4)
    when "5" then int_array.push(5)
    when "6" then int_array.push(6)
    when "7" then int_array.push(7)
    when "8" then int_array.push(8)
    when "9" then int_array.push(9)
    end
  end

  int_array.reduce { |num, i| num * 10 + i }
end

p string_to_integer("12398745643104564")

# DIGITS = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6,
#   '7' => 7,
#   '8' => 8,
#   '9' => 9,
# }

# def string_to_integer(string)
#   int_array = []

#   string.chars.each { |i| int_array << DIGITS[i]}
  
#   int_array.reduce { |num, i| num * 10 + i }
# end

# p string_to_integer("123123")