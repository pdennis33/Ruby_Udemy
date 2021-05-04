def custom_sample(array, result_size = nil)
  return array[rand(0..(array.length - 1))] if result_size.nil?

  result = []
  sample_array = array.dup
  result_size.times do
    picked_item = sample_array[rand(0..(sample_array.length - 1))]
    result << picked_item
    sample_array.delete(picked_item)
  end
  result
end

flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]
p flavors

p flavors.sample
p custom_sample(flavors)
puts
p flavors.sample(1)
p custom_sample(flavors, 1)
puts
p flavors.sample(3)
p custom_sample(flavors, 3)
puts
p flavors
