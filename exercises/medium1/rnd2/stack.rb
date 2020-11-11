=begin
Problem:
-create a stack  register program
Input: String of commands (all assued correct)
Output: Whatever is printed

ALGO:
-Convnert string to array called commands
-Loop through commands
  -match command w/ list
  -perform operation
  -iterate

=end

def minilang(commands_string)
  commands = commands_string.split(" ")
  counter = 0
  register = 0
  stack = []

  loop do
    c = commands[counter]
    case c
    when "PUSH"
      stack.push(register)
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      register /= stack.pop
    when "MOD"
      register %= stack.pop
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    else
      register = c.to_i
    end
    counter += 1
    break if counter == commands.length
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)