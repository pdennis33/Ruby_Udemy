sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."

# Get all constanants.  We'll exclude chars by using [^]
puts sales.downcase.scan(/[^aeiou\s,\.\d]/)
puts sales.downcase.scan(/[^aeiou\s,\.\d]/).length
