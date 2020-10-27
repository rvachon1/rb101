# PROBLEM
# Input: Integer Output: array of true/false objects

# Algo
# build array w/ 'n' boolean objects
# build flipping function w/ 2 arguments, array & increment
# iterate from 1 to n running flipping function eacy time

def light_switcher(array, inc)
  counter = 0

  while counter < array.length
    array[counter] = !array[counter] if (counter + 1) % inc == 0
    counter += 1
  end

  array
end

# p light_switcher([false, false,false,false,false], 3)

def light1000(num)
  lights = []
  counter = 1

  num.times { |i| lights << false} # initalize lights

  while counter <= num
    light_switcher(lights, counter)
    counter += 1
  end

  lights
end

p light1000(10)