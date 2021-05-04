# You can pass in methods as Procs by using them as symbols
numbers = ["1", "2", "3"]
p numbers.map { |elem| elem.to_i }
puts
p numbers.map(&:to_i)
puts
p [10, 14, 25].map(&:to_s)
puts

# Select even numbers
p [1, 2, 3, 4, 5].select { |num| num.even? }
p [1, 2, 3, 4, 5].select(&:even?)
