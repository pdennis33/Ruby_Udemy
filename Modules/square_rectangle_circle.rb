# Normally you should always have each module in its own file, but
#   for this exercise it was easier to keep in 1

module Square
  def self.area(side)
    side ** 2
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159

  def self.area(radius)
    PI * radius ** 2
  end
end

p Square.area(24)
p Rectangle.area(4, 8)
p Circle.area(7)
