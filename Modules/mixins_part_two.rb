module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

class Supermarket
  include Purchaseable

  def purchase(item)
    "Thanks for visiting the supermarket and buying #{item}"
  end
end

# CornerMart inherits from Supermarket, so it is also Purchaseable
class CornerMart < Supermarket
  def purchase(item)
    "Thanks for stopping and buying #{item}. Come again soon!"
  end
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Illusions")

whole_foods = Supermarket.new
p whole_foods.purchase("Apples")

quickstop = CornerMart.new
p quickstop.purchase("Bread")

p Bookstore.ancestors
bn = Bookstore.new
p bn.purchase("1984")
p CornerMart.ancestors
p Supermarket.ancestors
