def permutations(string)
  perm_arr = []
  chars = string.chars
  c1 = 0
  c2 = 1

  while c1 < chars.length
    chars[0], chars[c1] = chars[c1], chars[0]
    while c2 < chars.length
      perm_arr << chars.split
      chars[c2]
    end
    chars[0], chars[c1] = chars[c1], chars[0]
    c1 += 1
  end

end