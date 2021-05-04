phrase = "The Ruby Programming Language is amazing!"
search_for = "Language"

p phrase.include? "azi"
p phrase.include? "!"
p phrase.include? "mmi"
p phrase.include? "IS"
p phrase.upcase.include? "IS"
puts

# Custom include? method. Return true if the substring exists within
# the string. Return false otherwise
def custom_include?(string, substring)
  i, max_index = 0, string.length - substring.length + 1
  until i == max_index
    return true if string[i, substring.length] == substring
    i += 1
  end
  false
end

def custom_include_with_each?(string, substring)
  max_index = string.length - substring.length + 1
  string.chars.each_with_index do |char, i|
    break if i == max_index
    return true if string[i, substring.length] == substring
  end
  false
end

p custom_include?(phrase, search_for)
p custom_include?(phrase, "aziN")
p custom_include?(phrase, "!")
p custom_include?(phrase, "mmi")
p custom_include?(phrase, "IS")
p custom_include?(phrase.upcase, "IS")
puts
p custom_include_with_each?(phrase, search_for)
p custom_include_with_each?(phrase, "aziN")
p custom_include_with_each?(phrase, "!")
p custom_include_with_each?(phrase, "mmi")
p custom_include_with_each?(phrase, "IS")
p custom_include_with_each?(phrase.upcase, "IS")
