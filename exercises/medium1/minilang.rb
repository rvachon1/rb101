def minilang(string)
  commands_array = string.split
  stack = []
  register = 0

  while commands_array.length > 0
    # p commands_array
    case commands_array[0]
    when 'PUSH'
      stack.unshift(register)
    when 'ADD'
      register += stack.shift.to_i
    when 'SUB'
      register -= stack.shift.to_i
    when 'MULT'
      register *= stack.shift.to_i
    when 'DIV'
      register /= stack.shift.to_i
    when 'MOD'
      register %= stack.shift.to_i
    when 'POP'
      register = stack.shift.to_i
    when 'PRINT'
      puts register
    else
      register = commands_array[0].to_i
    end
    # p register
    # p stack
    commands_array.shift
  end
end

# p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)