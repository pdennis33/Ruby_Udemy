# Rolling sum
result = [3, 4, 5, 6, 7].reduce(0) do |prev, current|
  puts "The previous value is #{prev}"
  puts "The current value is #{current}"
  prev + current
end
puts result
puts
# Rolling product
result = [3, 4, 5, 6, 7].reduce(1) do |prev, current|
  puts "The previous value is #{prev}"
  puts "The current value is #{current}"
  prev * current
end
puts result
puts
# Rolling difference
result = [937, 132, 177, 100].reduce(937 * 2) { |prev, current| prev - current }
puts result
