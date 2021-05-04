# a proc is a saved block
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

p a.map { |num| num ** 3 }
p b.map { |num| num ** 3 }
p c.map { |num| num ** 3 }

puts
# the blocks above are repeated, so we should create a proc
cube_proc = Proc.new { |num| num ** 3 }

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cube_proc) }
p a_cubes, b_cubes, c_cubes

puts

currencies = [10, 20, 30, 40, 50]
other_currencies = [38, 68.17, 92, 49.31, 100]
to_kes = Proc.new { |amount| amount * 104.29 }
to_rupees = Proc.new { |amount| amount * 68.13 }
to_pesos = Proc.new { |amount| amount * 20.67 }

p currencies.map(&to_kes)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)
p other_currencies.map(&to_kes)
p other_currencies.map(&to_rupees)
p other_currencies.map(&to_pesos)

puts
puts

ages = [10, 60, 83, 30, 43, 25]
seniors = Proc.new { |age| age >= 60 }
p ages.select(&seniors)
p ages.reject(&seniors)
