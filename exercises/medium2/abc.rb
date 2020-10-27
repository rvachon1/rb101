def block_word?(word)
  blocks =  "B:O   X:K   D:Q   C:P   N:A   "\
          "G:T   R:E   F:S   J:W   H:U   "\
          "V:I   L:Y   Z:M   ".split("   ")
  result = true

  word.upcase.chars.each do |char|
    block_used = nil

    blocks.each_with_index do |block, index|
      block_used = index if block.include?(char)
    end

    block_used == nil ? result = false : blocks.delete_at(block_used)
  end

  result
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# When checking occurances in collection, instead of deleting the occurance in the
# collection, count them and reference the count for pass/fail criteria.