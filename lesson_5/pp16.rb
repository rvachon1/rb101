# UUID_CHARS = ('a'..'f').to_a + ("1".."9").to_a

# def create_uuid_substring(number)
#   string = ""

#   number.times do
#     string += UUID_CHARS.sample
#   end

#   string
# end

# def create_uuid()
#   create_uuid_substring(8) + "-" + 
#   create_uuid_substring(4) + "-" +
#   create_uuid_substring(4) + "-" +
#   create_uuid_substring(4) + "-" +
#   create_uuid_substring(12)
# end

# p create_uuid()

def generate_uuid()
  uuid_chars = []
  ("1".."9").each { |i| uuid_chars << i }
  ("a".."f").each { |i| uuid_chars << i }

  uuid = ""
  uuid_layout = [8, 4, 4, 4, 12]
  uuid_layout.each do |num|
    num.times { uuid += uuid_chars.sample }
    uuid += '-'
  end

  uuid
end

p generate_uuid()