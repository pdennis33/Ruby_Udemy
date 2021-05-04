def custom_squeeze(phrase, chars = nil)
  final_phrase = ""
  phrase.each_char do |char|
    final_phrase << char unless char == final_phrase[-1] && (chars.nil? || chars.include?(char))
  end
  final_phrase
end

sentence = "Thhe aardvark jummped ovver the   fence!"
p sentence
puts
p sentence.squeeze
p custom_squeeze(sentence)
p custom_squeeze(sentence) == sentence.squeeze
puts
p sentence.squeeze("hm v")
p custom_squeeze(sentence, "hm v")
p custom_squeeze(sentence, "hm v") == sentence.squeeze("hm v")
puts
p sentence.squeeze("h ")
p custom_squeeze(sentence, "h ")
