NUMBERS = {
  0 => 'Zero',
  1 => 'One',
  2 => 'Two',
  3 => 'Three',
  4 => 'Four',
  5 => 'Five',
  6 => 'Six',
  7 => 'Seven',
  8 => 'Eight',
  9 => 'Nine',
  10 => 'Ten',
  11 => 'Eleven',
  12 => 'Twelve',
  13 => 'Thirteen',
  14 => 'Fourteen',
  15 => 'Fifteen',
  16 => 'Sixteen',
  17 => 'Seventeen',
  18 => 'Eighteen',
  19 => 'Nineteen'
}

NUMBERS_STRINGS = {
  'Zero' => 0,
  'One' => 1,
  'Two' => 2,
  'Three' => 3,
  'Four' => 4,
  'Five' => 5,
  'Six' => 6,
  'Seven' => 7,
  'Eight' => 8,
  'Nine' => 9,
  'Ten' => 10,
  'Eleven' => 11,
  'Twelve' => 12,
  'Thirteen' => 13,
  'Fourteen' => 14,
  'Fifteen' => 15,
  'Sixteen' => 16,
  'Seventeen' => 17,
  'Eighteen' => 18,
  'Nineteen' => 19
}

def alphabetic_number_sort(array)
  # sorted_array = []
  # sorted_array_int = []

  array.sort_by! { |num| NUMBERS[num] }
  # array.each do |num|
  #   sorted_array << NUMBERS[num]
  # end

  # sorted_array.sort!

  # sorted_array.each do |num|
  #   sorted_array_int << NUMBERS_STRINGS[num]
  # end

  # p sorted_array_int
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]