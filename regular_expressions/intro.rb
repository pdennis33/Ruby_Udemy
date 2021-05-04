# The =~ syntax will return the index position of the first match
# We'll use // to signal using a RegEx
puts //.class

phrase = "The Ruby Programming Language is amazing!"

# Look for first occurrence of a single letter
p phrase =~ /T/
p phrase =~ /R/
p phrase =~ /m/
# you can switch sides with the syntax
p /m/ =~ phrase

# certain characters are special, such as the . which is any character
p "Testing." =~ /./

# returns nil if not found
p phrase =~ /x/

# can search for a phrase too
p phrase =~ /Ru/
p phrase =~ /ing/
