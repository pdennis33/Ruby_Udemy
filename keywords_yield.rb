def pass_control
  puts "This is inside the method"
  yield # Pass control from method to the block
  "Now I'm back inside the method"
end

p pass_control {
  puts "Line 1 of block"
  puts "Line 2 of block"
}

puts
puts

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome" }
who_am_i { "talented" }

puts
puts

def multiple_yields
  puts "Inside the method"
  yield
  puts "Back instide the method"
  yield
end

p multiple_yields { puts "Now I'm inside the block" }
