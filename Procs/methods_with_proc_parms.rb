def talk_about(name, pronoun, &myproc)
  puts "Let me tell you about #{name}."
  myproc.call(name, pronoun)
end

smart_proc = Proc.new do |name, pronoun|
  puts "#{pronoun} is so smart. I'm proud of you #{name}!"
end
handsome_proc = Proc.new do |name, pronoun|
  puts "#{pronoun} is so beautiful. Look at you go #{name}!"
end

talk_about("Paul", "He", &smart_proc)
talk_about("Paul", "He", &handsome_proc)
talk_about("Lena", "She", &smart_proc)
talk_about("Lena", "She", &handsome_proc)
