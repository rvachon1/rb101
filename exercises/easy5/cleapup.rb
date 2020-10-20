def cleanup(string)
  string.split.map { |i| i.gsub(/[^a-z]/i, " ") }.join(" ").squeeze(" ")
end

p cleanup("---what's my +*& line?") #== ' what s my line '