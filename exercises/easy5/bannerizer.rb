def print_in_box(string)
  print "+"
  (string.length + 2).times { |i| print "-" }
  print "+\n"
  print "|"
  (string.length + 2).times { |i| print " " }
  print "|\n"
  print "| #{string} |\n"
  print "|"
  (string.length + 2).times { |i| print " " }
  print "|\n"
  print "+"
  (string.length + 2).times { |i| print "-" }
  print "+\n"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
