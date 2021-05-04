def custom_zip(source, *array)
  result = []
  source.each_with_index do |elem, i|
    inner_array = [elem]
    array.each { |inner_elem| inner_array << inner_elem[i] }
    result << inner_array
  end
  result
end

names = ["Bo", "Moe", "Joe"]
reg = [true, false, false]
a = ["A", "B", "C"]
b = ["Test", "Testing", "Tested"]

p names.zip
p custom_zip(names)
puts
p names.zip(reg, a)
p custom_zip(names, reg, a)
puts
p names.zip(reg, ["A", "B"])
p custom_zip(names, reg, ["A", "B"])
puts
p names.zip(reg, a, b)
p custom_zip(names, reg, a, b)
puts
p names
p reg
