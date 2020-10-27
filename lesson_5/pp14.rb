hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = hsh.map do |_, sub_hsh|
  if sub_hsh[:type] == "fruit"
    sub_hsh[:colors].map { |i| i.capitalize }
  elsif sub_hsh[:type] == "vegetable"
    sub_hsh[:size].upcase 
  end
end

p array