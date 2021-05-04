def longest_word(sentence)
  longest_word = ""
  sentence.split.each { |word| longest_word = word if word.length >= longest_word.length }
  longest_word
end

sentence = "Bobby loves big scary kangaroos"
p longest_word(sentence)
sentence = "Ruby is my favorite language"
p longest_word(sentence)
