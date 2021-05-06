class Array
  def sum
    total = 0
    self.each { |obj| total += obj if obj.is_a?(Numeric) }
    total
  end
end

class String
  def alphabet_sum
    string_integers = self.chars.map { |letter| letter.downcase.ord - 96 }
    string_integers.select! { |int| int.between?(1, 26) }
    string_integers.sum
  end
end

arr1 = [1, 2, 3, 4, 5]
p arr1.sum
arr2 = [1, "Paul", 2, true, false, 3]
p arr2.sum

test = "abcde"
p test.alphabet_sum

my_name = "Paul Dennis"
p my_name
p my_name.alphabet_sum

p "xyz".alphabet_sum

puts "abc".alphabet_sum
puts "zzz".alphabet_sum
puts "hEllo worLD".alphabet_sum
