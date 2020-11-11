=begin
Input: Integer
Output: String
Rules:
  -No more than three of the same roman numeral in a row
  -No number over higher than 1999?

ALGO:
-Initalize ROM_HSH w/ :sym for place & all string symobols for values
-Split integer into 1000s, 100s, 10s, 1s 
-Store digit w/ place in array for each digit in dig_arr (ex: [[1, :thousands], [2, :hundreds], ...])
-Create roman_sym method that takes a digit and a place, and spits out the roman numeral as a string for that digit
-Initalize rom to empty string
-Iterate through dig_arr
  -call roman_sym() on each
  -shovel output into rom
-return rom
=end

ROM_HSH = {
  ones: ["I", "V", "X"],
  tens: ["X", "L", "C"],
  hundreds: ["C", "D", "M"],
  thousands: ["M"]
}

def roman_sym(dig, place)
  sym = ROM_HSH[place]
  return sym[0] * dig if place == :thousands
  case dig
  when 9 then sym[0] + sym[2]
  when 8 then sym[1] + (sym[0] * 3)
  when 7 then sym[1] + (sym[0] * 2)
  when 6 then sym[1] + (sym[0] * 1)
  when 5 then sym[1]
  when 4 then sym[0] + sym[1]
  when 3 then sym[0] * 3
  when 2 then sym[0] * 2
  when 1 then sym[0]
  else
    ""
  end
end

def dig_arr(number)
  thousands, mod = number.divmod(1000)
  hundreds, mod = mod.divmod(100)
  tens, mod = mod.divmod(10)
  ones, mod = mod.divmod(1)

  [
    [thousands, :thousands],
    [hundreds, :hundreds],
    [tens, :tens],
    [ones, :ones]
  ]
end

def solution(number)
  rom = ""

  dig_arr(number).each do |dig|
    rom << roman_sym(dig[0], dig[1])
  end
  rom
end

p solution(1234)