1..100.times do |num|
  puts "#{num}" if num.odd?
end

counter = 0

until counter == 100
  puts "#{counter} until" if counter.odd?
  counter += 1
end