# Iterate through the string and pull out all of the brackets, keeping order persistent
# Map brackets array where "(" = +1, ")" = -1, total must >= 0 

def balanced?(string)
  brackets = string.chars.select do |i|
    i == "(" || i == ")"
  end

  acc = 0
  
  brackets.each do |i|
    case i
    when "(" then acc += 1
    when ")" then acc -= 1
    end

    return false if acc < 0
  end

  acc == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false