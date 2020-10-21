def swapcase(string)
  swapped_string = []

  string.chars.each do |char|
    if char.match(/[a-z]/)
      swapped_string << char.upcase
    elsif char.match(/[A-Z]/)
      swapped_string << char.downcase
    else
      swapped_string << char
    end
  end

  swapped_string.join
end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def staggered_case(string)
  staggered_string = []
  split_string = string.downcase.chars
  boolean = true

  split_string.each do |char|
    if boolean == true && char.match(/[a-z]/)
      staggered_string << char.upcase
      boolean = false
    elsif boolean == false && char.match(/[a-z]/)
      staggered_string << char
      boolean = true
    else
      staggered_string << char
    end
  end

  staggered_string.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'