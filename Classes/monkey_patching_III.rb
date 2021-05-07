# The main lesson here is that even if you monkey patch a class after
# => an instance has been created (in this case goosebumps), the new
# => methods are still available.

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
# p goosebumps

class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page}..." }
    puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
# p animal_farm
# p animal_farm.read
p goosebumps.read
