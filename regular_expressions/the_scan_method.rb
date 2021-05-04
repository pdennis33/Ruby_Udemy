# scan finds all matches and returns an array
voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

p voicemail.scan(/re/)
p voicemail.scan(/re/).length

# if I want to find either r OR e, I can use []
p voicemail.scan(/[re]/)
puts
puts

# using a \ indicates a special instruction is coming.
# IE, \d means any digit
p voicemail.scan(/\d/)
# \d+ means 1 or more occurrences of a digit
p voicemail.scan(/\d+/)
# scan can also accept a block so we can specify what we want
#   Ruby to do every time it finds a match
voicemail.scan(/\d+/) { |match| puts match.length }
