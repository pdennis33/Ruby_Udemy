# The \ character escapes the next character so it can be a special character

paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."

# Look for an actual .
p paragraph.scan(/\./)
# look for any digit
p paragraph.scan(/\d/)
# \D is any NON-digit
p paragraph.scan(/\D/)
# \s means any whitespace character
p paragraph.scan(/\s/)
# \S is any NON-whitespace
p paragraph.scan(/\S/)
