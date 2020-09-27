vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count_hash = {}
  key = ""
  counter = 0

  loop do
    key = array[counter]
    if count_hash[key]
      count_hash[key] += 1
    else
      count_hash[key] = 1
    end
    counter += 1
    break if counter == array.length
  end

  count_hash.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

def idio_count_occurences(array)
  count_hash = {}

  array.uniq.each do |i|
    count_hash[i] = array.count(i)
  end

  count_hash.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

puts "********** Brute Force **********"
count_occurrences(vehicles)
puts "********** Idio **********"
idio_count_occurences(vehicles)
