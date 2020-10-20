DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

def string_to_integer(string)
  int_array = []

  string.chars.each { |i| int_array << DIGITS[i]}
  
  int_array.reduce { |num, i| num * 10 + i }
end

# def string_to_signed_integer(string)
#   case string[0]
#   when "-" then -string_to_integer(string[1..-1])
#   when "+" then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

def string_to_signed_integer(string)
  int_array = []
  int_sign = '+'
  string_array = string.chars

  int_sign = string_array.shift() if !DIGITS.key?(string.chars.first)
  
  string_array.each { |i| int_array << DIGITS[i]}
  
  if int_sign == "+"
    int_array.reduce { |num, i| num * 10 + i }
  else
    neg_num = int_array.reduce { |num, i| num * 10 + i }
    neg_num - ( 2 * neg_num )
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100