# Image a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row
# containing one integer, the second row two integers, the third row three integers, and so on.
# Given an integer representing the number of a particular row, return an integer representing the sum of all
# the integers in that row. 

# PROBLEM
# input: integer - row number
# output: integer - sum of that row
# Rules:
#   Exlicit:
#     -Numbers are all even
#     -Every row has one more number than the previoius
#   Implicit:
#     -Every row has the same number of items in that row as the row number

# Sequence:
# 2
# 4, 6
# 8, 10, 12
# 14, 16, 18, 20

# EXAMPLES

# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68

# DATA STRUCTURES

# Array

# ALGORITHM
# MINE 
# Create method row_sum(row) that takes one argument, an integer
# Calculate the data structure up to and including that row, store in array **HARD**
#   - Loop 1: Control Rows. Adds a ONE new row each iteration. Stops once # of rows = desired row to sum
#     - Loop 2: Controls Numbers in row. Sequentially add numbers, incremening by two, until row.length = row counter
# Pull out the last row
# Sum the last ror

# HIS ALGORITHM
# 1. Create an 'empty rows' array to contain all of the rows
# 2. Create a 'row' array and add it to the overall 'rows' aray
# 3. Repeat step 2 until all the necessary rows have been created
# 4. Sum the final row > Return Sum

# *Mini Problem: Create a Row in this sequence*

# Ruless:
#   - Row is an array
#   - Array contains integers
#   - Integers are consecutive even numbers
#   - Integers in each row form part of an overall larger sequence
# Input: 
# 1 - Starting integer in row
# 2 - Length of the row
# Output: Row itself

# Examples: 
# Start 2, Length 1
# Start 4, Length 2
# Start 8, Length 3

# Algorithm
# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integer
# 3. Increment the sequence by 2
# 4. Repleat steps 2 & 3 until reached the correct length
# 5. Return the array

def create_row(sequence_row, starting_number)
  row = []
  current_integer = starting_number

  while row.length < sequence_row
    row << current_integer
    current_integer += 2
  end

  [row, current_integer]
end

def create_sequence(row_number)
  sequence = []
  sequence_row = 1
  starting_number = 2

  while sequence.length < row_number
    row, starting_number = create_row(sequence_row, starting_number)
    sequence << row
    sequence_row += 1
  end

  sequence
end

def row_summer(row_number)
  create_sequence(row_number)[-1].reduce(&:+) # Sum the last row in the sequence
end

p row_summer(1)
p row_summer(2)
p row_summer(3)
p row_summer(4)

# Version 2

# def generate_structure(row)
#   sequence = []
#   current_row = []
#   current_number = 0
#   row_counter = 0

#   while sequence.length < row
#     while current_row.length <= row_counter
#       current_number += 2
#       current_row << current_number
#       end
#     sequence.push(current_row)
#     row_counter += 1
#     current_row = []
#   end

#   sequence
# end

# def row_sum(row)
#   generate_structure(row)[-1].reduce(&:+) # Sum the last row in the structure 
# end

# p row_sum(1)
# p row_sum(2)
# p row_sum(10078)
