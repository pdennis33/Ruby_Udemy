
capitals = {
  Alabama: "Montgomery", Alaska: "Juneau",
  Arizona: "Phoenix", Arkansas: "Little Rock"
}

capitals.each do |state, capital|
  puts "Querying hash..."
  puts "The capital of #{state} is #{capital}"
end
puts
puts
capitals.each do |pair|
  puts "Querying hash..."
  puts "The capital of #{pair[0]} is #{pair[1]}"
end
