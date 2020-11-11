=begin
Problem: Output how many thieves are caught

Input: String
Output: Integer of Theives caught
  Rules: Theives = "X", Normal = "#", Police = "1-9"
   - The digit of the policeman determines how many characters infront and behind they can see
   - If a digit's sight overlaps a theif, he is "caught"
   
ALGO:
  - Iterate through string with index
    - If POLICEMAN,
      -Grab entire vision
      -gsub "X" for "C" to show as caught
  - Count "C"s
=end

def catch_thief(queue)
  people_arr = queue.chars
    
  people_arr.each_with_index do |num, idx|
    min = idx - num.to_i
    min = 0 if min < 0
    
    max = num.to_i + idx
    max = people_arr.length - 1 if max > people_arr.length - 1
    
    if num.match(/[1-9]/)
      people_arr[(min)..(max)].each { |char| char.gsub!("X", "C") }
    end
  end
  people_arr.count("C")
end

p catch_thief("X1X#2X#XX") == 3
p catch_thief("X5X#3X###XXXX##1#X1X") == 5
p catch_thief("X#X1#X9XX") == 5