require "time"

puts Time.parse("Jan 23, 1983")
puts Time.parse("1983-01-23")
puts
# We can tell Ruby how to parse a string into a date
puts Time.parse("03-04-2000") # We wanted March 4th, 2000
puts Time.strptime("03-04-2000", "%m-%d-%Y")
