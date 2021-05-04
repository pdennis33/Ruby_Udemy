# an anchor is a symbol that ties a match to a specific point within the string.
#   for example, the beginning or end
poem = "99 bottles of beer on the wall, 99 bottles of beer"

# if we want to search for a digit, but only at the very beginning
#  we can use \A to search at the start
p poem.scan(/\A\d+/)
# \z is at the end and needs to be placed at the end
p poem.scan(/eer\z/)
