def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter { puts "Hello from the custom block" }
greeter(&phrase)

puts

hi = Proc.new { puts "Hi there" }
hi.call
puts
5.times(&hi)
