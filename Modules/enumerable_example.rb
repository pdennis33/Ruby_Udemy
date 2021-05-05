class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each { |snack| yield snack }
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Bread")
bodega.add_snack("Milk")
bodega.add_snack("Butter")
bodega.add_snack("Brownies")
p bodega.snacks
#puts
#bodega.each { |snack| puts "Our store carries #{snack}!" }
puts
p bodega.any? { |snack| snack.start_with?("B") }
p bodega.all? { |snack| snack.start_with?("B") }
p bodega.select { |snack| snack.start_with?("B") }
p bodega.reject { |snack| snack.start_with?("B") }
food_lengths = bodega.map { |snack| snack.length }
p food_lengths
p bodega.snacks.sample(2)
p bodega.sort
p bodega.first
p bodega.count
