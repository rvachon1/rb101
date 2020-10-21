def letter_case_count(string)
  count_hash = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  string.chars.each do |char|
    if char.match(/[a-z]/)
      count_hash[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end

  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }