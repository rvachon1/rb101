DIGITS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
}

def integer_to_string(int)
str_array = []

return "0" if int == 0
  while int > 0
    int, digit = int.divmod(10)
    str_array.unshift(DIGITS[digit])
  end

  str_array.join('')
end

def signed_integer_to_string(int)
  if int > 0 
    integer_to_string(int).prepend('+')
  elsif int < 0 
    integer_to_string(-1 * int).prepend('-')
  else
    integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'