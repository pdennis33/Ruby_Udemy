class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.description
    "Hi there, I'm the blueprint for Bicycles! Use me to create a Bicycle object"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end
end

puts Bicycle.description
puts Bicycle.count

huffy = Bicycle.new
puts Bicycle.count
all_terrain = Bicycle.new
puts Bicycle.count
c =  Bicycle.new
puts Bicycle.count
