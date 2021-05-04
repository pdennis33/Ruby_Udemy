# the sub method on a string substitutes a string with another string
#   only replaces the first occurrence
puts "whimper".sub("m", "s")
puts "wordplay".sub("w", "sw")
puts "testing".sub("t", "b")

# sub! mutates the variable
word = "testing"
p word
word.sub!("e", "oa")
p word

# gsub is a global substitution, where it replaces ALL occurrences
puts "an apple".gsub("a", "i")
puts "555-555-1234".gsub("-", "")

# regex comes in handy if we have a case like below and want to get the
#   phone number only without chars
puts "(555)_ 555-1234".gsub("(", "").gsub(")", "").gsub("-", "").gsub(" ", "")
# OR using regex it becomes
puts "(555)_ 555-1234".gsub(/[^\d]/, "")

# gsub! exists too
number = "(555)_ 555-1234"
puts number
number.gsub!(/[^\d]/, "")
puts number
