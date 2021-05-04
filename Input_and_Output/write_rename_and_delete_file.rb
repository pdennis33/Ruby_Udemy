File.open("myFirstFile.txt", "w") do |file|
  file.puts "I'm creating this from Ruby"
  file.write "No line break here, "
  file.puts "pretty cool!"
end

File.open("myFirstFile.txt", "a") do |file|
  file.puts "Appending a new line to the file"
  file.print "Writing the final line "
  file.puts "without a line break in the middle"
end

File.rename("myFirstFile.txt", "somethingBetter.txt")
File.delete("somethingBetter.txt") if File.exist?("somethingBetter.txt")
File.delete("myFirstFile.txt") if File.exist?("myFirstFile.txt")
