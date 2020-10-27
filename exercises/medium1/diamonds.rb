def diamond(odd_int)
  stars = 1
  spaces = odd_int - stars
  row = 0

  while row < (odd_int/2.0).ceil # top half
    puts ' ' * (spaces/2) + '*' * stars + ' ' * (spaces/2)
    stars += 2
    spaces = odd_int - stars
    row += 1
  end

  stars -= 2

  while row < odd_int # bottom half
    stars -= 2
    spaces = odd_int - stars
    puts ' ' * (spaces/2) + '*' * stars + ' ' * (spaces/2)
    row += 1
  end 
end

diamond(9)