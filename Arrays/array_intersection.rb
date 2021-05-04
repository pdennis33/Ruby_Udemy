def custom_intersection(source, *arrays)
  result = []
  source.uniq.each do |elem|
    is_intersect = true
    arrays.each do |array|
      unless array.include?(elem)
        is_intersect = false
        break
      end
    end
    result << elem if is_intersect unless result.include?(elem)
  end
  result
end


a = [1, 1, 2, 3, 4, 5]
b = [1, 4, 5, 8, 9]
c = [4, 5, 10, 11]
p a & b
p custom_intersection(a, b)
puts
p a & b & c
p custom_intersection(a, b, c)
