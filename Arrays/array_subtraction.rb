def custom_arr_sub(source, items = [])
  result = []
  source.each { |elem| result << elem unless items.include?(elem) }
  result
end

array = [1, 1, 2, 2, 3, 3, 3, 3, 4, 5]
p array - [1, 4, 5]
p custom_arr_sub(array, [1, 4, 5])
p array - [1, 4, 5] == custom_arr_sub(array, [1, 4, 5])
puts
p array - []
p custom_arr_sub(array)
