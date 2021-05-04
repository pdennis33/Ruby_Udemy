def custom_union(source, *others)
  result = []
  combined = [source.dup]
  combined += others
  combined.each { |array| array.each { |elem| result << elem unless result.include?(elem) } }
  result
end

def custom_union_test(source, *others)
  result = []
  combined = [source.dup].concat(others)
  combined.each { |array| array.each { |elem| result << elem unless result.include?(elem) } }
  result
end

a = [3, 1, 2, 3]
b = [3, 4, 5, 1]
c = [4, 5, 6, 7, 8]
p a | b | c
p custom_union(a, b, c)
p custom_union_test(a, b, c)
