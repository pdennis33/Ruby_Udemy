module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

# CornerMart inherits from Supermarket, so it is also Purchaseable
class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Illusions")

whole_foods = Supermarket.new
p whole_foods.purchase("Apples")

quickstop = CornerMart.new
p quickstop.purchase("Bread")
