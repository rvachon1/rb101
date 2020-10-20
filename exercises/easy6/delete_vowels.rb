VOWELS = %w(a A e E i I o O u U)

def remove_vowels(string)
  string.map do |i|
    i.gsub(/[aeiou]/i, "")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']