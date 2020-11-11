=begin

Problem:
-Make an eight point star on an N x N grid
-N MUST BE NEGATIVE
-Smallest star is n = 7

Rules:
-Every row has 3 STARS except center, which has N

ALGO:
-Print Top Half
  -formulate patern for each segment
  -Loop (n-1)/2 times to print each row
    -Print each segment according to corresponding function

-Print Center Line
-Print Bottom Half

=end

def print_top_half(n)
    limit = (n-3)/2
    space_sides = 0
    space_center = limit

  loop do
    puts (" " * space_sides + "*" + " " * space_center + "*" + " " * space_center + "*" + " " * space_sides)
    space_sides += 1
    space_center -= 1
    break if space_sides > limit
  end
end

def print_center(n)
  puts "*" * n
end

def print_bottom_half(n)
    limit = (n-3)/2
    space_sides = limit
    space_center = 0

  loop do
    puts (" " * space_sides + "*" + " " * space_center + "*" + " " * space_center + "*" + " " * space_sides)
    space_sides -= 1
    space_center += 1
    break if space_center > limit
  end
end

def print_star(n)
  print_top_half(n)
  print_center(n)
  print_bottom_half(n)
end

print_star(13)