def substrings(str)
  index = 0
  substrings = []
  
  while index < (str.length - 1) # Index Loop
    size = 2
    while size <= (str.length - index) # String length loop
      substrings << str[index, size]
      size += 1
    end
    index += 1
  end

  substrings
end

p substrings("halo")