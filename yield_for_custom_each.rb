def custom_each(enumerable)
  arr = enumerable.to_a
  i = 0
  until i == arr.length
    yield(arr[i])
    i += 1
  end
end

arr1 = [1, 2, 3, 4, 5]
hash1 = {one: 1, two: 2, three: 3, four: 4, five: 5}
arr2 = [[:one, 1], [:two, 2], [:three, 3], [:four, 4], [:five, 5]]

puts "Current type is #{arr1.class}"
arr1.each { |num| puts "Current number is #{num}" }
puts
puts "Current type is #{hash1.class}"
puts "Each with pair:"
hash1.each { |pair| puts "Current number is #{pair[1]}" }
puts "Each with key/value:"
hash1.each { |key, value| puts "Current key is #{key} and number is #{value}" }
puts
puts "Current type is #{arr2.class}"
puts "Each:"
arr2.each { |num| puts "Current number is #{num}" }
puts "Each with pair:"
arr2.each { |pair| puts "Current number is #{pair[1]}" }
puts "Each with key/value:"
arr2.each { |key, value| puts "Current key is #{key} and number is #{value}" }
puts
puts "Current type is #{arr2.class}"
puts "Custom Each:"
custom_each(arr2) { |num| puts "Current number is #{num}" }
puts "Custom Each with pair:"
custom_each(arr2) { |pair| puts "Current number is #{pair[1]}" }
puts "Custom Each with key/value:"
custom_each(arr2) { |key, value| puts "Current key is #{key} and number is #{value}" }
puts
puts "Current type is #{hash1.class}"
puts "Custom Each:"
custom_each(hash1) { |num| puts "Current number is #{num}" }
puts "Custom Each with pair:"
custom_each(hash1) { |pair| puts "Current number is #{pair[1]}" }
puts "Custom Each with key/value:"
custom_each(hash1) { |key, value| puts "Current key is #{key} and number is #{value}" }
puts
puts
print_string = Proc.new do |num|
  p num.to_s
end
custom_each(arr1, &print_string)
