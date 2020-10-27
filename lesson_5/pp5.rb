munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# men = munsters.select do |name, hsh|
#   hsh["gender"] == "male"
# end

# total_age = 0

# men.each do |name, hsh|
#   total_age += hsh["age"]
# end

total_age = 0
munsters.each do |name, hsh|
  total_age += hsh["age"] if hsh["gender"] == "male"
end

p total_age