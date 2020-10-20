def crunch(string)
  de_duplicated = []

  string.chars.each do |letter|
    de_duplicated << letter if de_duplicated.last != letter
  end

  de_duplicated.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''