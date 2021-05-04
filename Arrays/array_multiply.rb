def custom_multiply(array, mult_count)
  result = []
  mult_count.times { result += array }
  result
end

p 4 * 3
p "Ruby" * 5
puts
puts
p [1, 2, 3] * 3
p custom_multiply([1, 2, 3], 3)
puts
p ["A", "B", "C", "Paul"] * 4
p custom_multiply(["A", "B", "C", "Paul"], 4)
p custom_multiply(["Ruby", "JavaScript", "Python"], 7)
p custom_multiply(["Ruby", "JavaScript", "Python"], 7).length
