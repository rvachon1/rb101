require 'pry'
=begin
Problem:
- Array of N switches all set to off (false). 
-Do passes over them flicking every i switch, iterating i by 1 every pass
- return array after i > n

ALGO:
- Create array of N boolean objects = false
  - Loop Array 
    - switching element % i == 0 element
    - increment i by 1
    - break once done n passes
-return array
=end

def lights_1000(n)
  switches = []
  on_arr = []
  n.times { |_| switches << false }
  i = 1

  loop do
    switches.each_with_index do |switch, idx|
      switches[idx] = !switch if (idx + 1) % i == 0 
    end
    break if i > n
    i += 1
  end
  switches.each_with_index { |switch, idx| on_arr << (idx + 1) if switch == true }
  on_arr
end

p lights_1000(10)

