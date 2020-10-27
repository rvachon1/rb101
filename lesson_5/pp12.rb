arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

counter = 0
hsh = {}

while counter < arr.length
  hsh[arr[counter][0]] = arr[counter][1]
  counter += 1
end

p hsh