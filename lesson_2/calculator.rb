# ask the user for two numbers
# ask the user for an operation to perform
# perofrm the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_MESSAGES.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_language?(language)
  if language == '1' || language == '2'
    true
  else
    false
  end
end

def language_select(input)
  language =  case input
              when '1' then "en"
              when '2' then "fr"
              end

  language
end

def integer?(num)
  num.to_i().to_s() == num
end

def float?(num)
  num.to_f().to_s() == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(input)
  word =  case input
          when '1' then "adding"
          when '2' then "subtracting"
          when '3' then "multiplying"
          when '4' then "dividing"
          end

  word
end

language = ''
name = ''
num1 = nil
num2 = nil

loop do # language select loop
  prompt(MESSAGES["which_language"])
  language_input = Kernel.gets().chomp()

  if valid_language?(language_input)
    language = language_select(language_input)
    break
  else
    prompt(MESSAGES["invalid_entry"][language])
  end
end

prompt(MESSAGES["welcome"][language])

loop do # name loop
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES["valid_name"][language])
  else
    break
  end
end

prompt("#{MESSAGES['hello'][language]} #{name}!")

loop do # main loop
  loop do # num1 loop
    prompt(MESSAGES["num1_msg"][language])
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      prompt(MESSAGES["invalid_entry"][language])
    end
  end

  loop do # num2 loop
    prompt(MESSAGES["num2_msg"][language])
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
      break
    else
      prompt(MESSAGES["invalid_entry"][language])
    end
  end

  prompt(MESSAGES["input_prompt"][language])

  input = ''
  loop do # input selection loop
    input = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(input) # array of strings
      break
    else
      prompt(MESSAGES["invalid_num_selection"][language])
    end
  end

  prompt("#{operation_to_message(input)} #{MESSAGES['calc_prompt'][language]}")

  result =  case input
            when '1' then num1.to_f + num2.to_f
            when '2' then num1.to_f - num2.to_f
            when '3' then num1.to_f * num2.to_f
            when '4' then num1.to_f / num2.to_f
            end

  prompt("#{MESSAGES['result'][language]} #{result}")

  prompt(MESSAGES["another?"][language])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES["goodbye"][language])