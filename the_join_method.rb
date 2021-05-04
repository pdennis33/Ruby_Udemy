def custom_join(array, delimiter = "")
  joined_string = ""
  arr_length = array.length - 1
  array.each_with_index do |word, i|
    joined_string << word
    joined_string << delimiter unless i == arr_length
  end
  joined_string
end

names = ["Joe", "Moe", "Bob"]
p names
p custom_join(names, "!--!")
p names
p names.join("!--!")
p custom_join(names, "!--!") == names.join("!--!")
