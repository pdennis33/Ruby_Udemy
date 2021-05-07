class Product
  @@product_counter = 0

  def self.count
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.count
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def self.count
    @@thingamajig_counter
  end

  def initialize
    super
    @@thingamajig_counter += 1
  end
end

w1 = Widget.new
w2 = Widget.new
p Widget.count
p Product.count
t1 = Thingamajig.new
t2 = Thingamajig.new
t3 = Thingamajig.new
p Thingamajig.count
p Product.count
