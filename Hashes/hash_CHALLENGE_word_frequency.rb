# Create a method that takes a string and return a hash where the keys will
# represent the words in the string and the values will represent the count
# of each word.
def word_count(phrase)
  result = Hash.new(0)
  phrase.split(" ").each { |word| result[word] += 1 }
  result
end

def word_count_with_symbols(phrase)
  result = Hash.new(0)
  phrase.split(" ").each { |word| result[word.to_sym] += 1 }
  result
end

sentence = "Once upon a time in a land far far far away..."
result = word_count(sentence)
p result
p result["far"]
result = word_count_with_symbols(sentence)
p result
p result[:far]
