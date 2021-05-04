phrase = "The Ruby Programming Language is amazing."

# We know the . means any character at all.
puts phrase =~ /./
# We can therefore use it to get any character before a match,
#   like in this case check for any character before ing
puts phrase.scan(/.ing/)
