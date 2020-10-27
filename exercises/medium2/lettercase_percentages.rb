def letter_percentages(string)
  count_hash = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  string.chars.each do |char|
    if ('a'..'z').include?(char)
      count_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end

  sum = count_hash.values.reduce(&:+).to_f
  lowercase = count_hash[:lowercase] / sum * 100
  uppercase = count_hash[:uppercase] / sum * 100
  neither = count_hash[:neither] / sum * 100

  {
    lowercase: format("%.2f",lowercase),
    uppercase: format("%.2f", uppercase),
    neither: format("%.2f", neither)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')