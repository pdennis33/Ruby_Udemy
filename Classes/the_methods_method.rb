# the .methods method returns an array of all methods the object responds to
integer_methods = 5.methods.sort
float_methods = 3.14.methods.sort

# get methods in common
# puts integer_methods & float_methods

# get only methods unique to integers
# puts integer_methods - float_methods

# get only methods unique to floats
puts float_methods - integer_methods
