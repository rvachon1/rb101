require 'pry'
require 'pry-byebug'

REDUN_DIR = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST" => "EAST"
}

def dirReduc(arr)
  removed = false
  counter = 0
  
  while removed == false
    counter = 0
    removed = true
    while counter < arr.length
      if REDUN_DIR[arr[counter]] == arr[counter +1]
        arr.delete_at(counter)
        arr.delete_at(counter)
        binding.pry
        removed = false
      end
      counter += 1
    end
  end
  arr
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a)