def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Paul") { |name, age| puts "#{name} is brilliant" }
speak_the_truth("Lena") { |name| puts "#{name} is brilliant" }

puts

def number_eval(num1, num2, num3)
  puts "Inside the method"
  yield(num1, num2, num3)
end

product = number_eval(5, 10, 15) { |num1, num2, num3| num1 * num2 * num3 }
p product
sum = number_eval(5, 10, 15) { |num1, num2, num3| num1 + num2 + num3 }
p sum
