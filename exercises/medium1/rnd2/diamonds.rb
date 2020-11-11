=begin
Problem:
-Make a 4 pointed diamond with n rows

Rules:
-N is always odd
- middle row has n stars
- starts with 1 star, each row grows by 2 until middle, then shrinks by two until 1 

ALGO:
-Print Top half
  -spaces = n - stars
  -stars = 1
  -Loop
    - Print spaces / 2 + stars + spaces / 2
    - stars += 2
    - spaces = n - stars
    - break if stars > n
-Print Bottom half
  - spaces = 2
  - stars = n - spaces
  - Loop
    -print spaces / 2 + stars + spaces / 2
    -spaces += 2
    - stars = n - spaces
   - break if stars < 0
=end

def top_half(n)
  stars = 1
  spaces = n - stars

  loop do
    puts (" " * (spaces/2)) + ("*" * stars) + (" " * (spaces/2))
    stars += 2
    spaces = n - stars
    break if stars > n
  end
end

def bottom_half(n)
  spaces = 2
  stars = n - spaces

  loop do
    puts (" " * (spaces/2)) + ("*" * stars) + (" " * (spaces/2))
    spaces += 2
    stars = n - spaces
    break if stars < 0
  end
end

def diamond(n)
  if n == 1
    puts "*" if n == 1
    return
  end

  top_half(n) 
  bottom_half(n)
end

diamond(1)
diamond(3)
diamond(9)