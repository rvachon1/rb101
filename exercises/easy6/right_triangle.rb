def triangle(int)
  spaces = int - 1
  stars = 1

  while stars <= int
    puts "#{' ' * spaces}#{'*' * stars}"
    stars += 1
    spaces = int - stars
  end
end

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

triangle(5)

#     *
#    **
#   ***
#  ****
# *****