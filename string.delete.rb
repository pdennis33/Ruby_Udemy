def custom_delete(phrase, chars = "")
  return phrase if chars.length == 0
  final_phrase = ""
  phrase.each_char { |char| final_phrase << char unless chars.include?(char) }
  final_phrase
end

word = "Hello World!"

p word.delete("")
p custom_delete(word)

p word.delete("drH")
p custom_delete(word, "drH")

p word.delete("drh")
p custom_delete(word, "drh")
