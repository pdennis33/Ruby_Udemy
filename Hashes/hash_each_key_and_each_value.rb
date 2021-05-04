def custom_each_key(hash)
  keys = []
  hash.each { |pair| keys << pair[0] }
  keys
end

def custom_each_value(hash)
  values = []
  hash.each { |pair| values << pair[1] }
  values.uniq
end

salaries = {
  director: 100000, producer: 200000,
  ceo: 3000000, assistant: 200000
}

salaries.each_key do |position|
  puts "Employee record: -----"
  puts position
end

salaries.each_value { |salary| puts "The next employee earns #{salary}" }

puts
puts

p custom_each_key(salaries)
p custom_each_value(salaries)
