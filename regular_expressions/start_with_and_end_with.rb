def custom_start_with_array?(phrase, substring)
  phrase[0, substring.length] == substring
end
def custom_start_with_each_char?(phrase, substring)
  substring.chars.each_with_index { |char, i| return false unless phrase[i] == char }
  true
end

def custom_end_with_array?(phrase, substring)
  phrase[-substring.length, substring.length] == substring
end
def custom_end_with_each_char?(phrase, substring)
  index_offset = -(substring.length)
  substring.chars.each_with_index { |char, i| return false unless phrase[index_offset + i] == char }
  true
end

phrase = "The Ruby programming language is amazing!"

puts phrase.start_with?("The")
puts phrase.start_with?("the")
puts phrase.downcase.start_with?("the")
puts phrase.start_with?("The Ruby")
puts phrase.start_with?("Ruby")
puts
puts phrase.end_with?("ing!")
puts phrase.end_with?("amazing!")
puts phrase.end_with?("amazing")
puts
puts custom_start_with_array?(phrase, "The ")
puts custom_start_with_each_char?(phrase, "The ")
puts custom_end_with_array?(phrase, "zing")
puts custom_end_with_each_char?(phrase, "zing")
