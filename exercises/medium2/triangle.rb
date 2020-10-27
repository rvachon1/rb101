def triangle(side1, side2, side3)
  tri_arr = [side1, side2, side3]

  # No side can be 0 length
  return :invalid if tri_arr.include?(0)

  # Two smaller sides must be > longest side
  max_num_index = tri_arr.index(tri_arr.max)
  not_max_arr = tri_arr.dup
  not_max_arr.delete_at(max_num_index)
  return :invalid if not_max_arr.reduce(&:+) <= tri_arr.max
  
  if tri_arr.uniq.size == 1 
    :equilateral
  elsif tri_arr.uniq.size == 2
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid