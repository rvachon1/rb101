def triangle(angle1, angle2, angle3)
  angles_array = [angle1, angle2, angle3]

  # No angle can be 0 && sum of angles === 180
  return :invalid if angles_array.include?(0) || angles_array.reduce(&:+) != 180

  if angles_array.uniq.include?(90)
    :right
  elsif angles_array.max > 90
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid