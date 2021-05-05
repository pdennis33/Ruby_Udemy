module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

# Usage when using include
# bear = Dog.new
# p bear.who_am_i
# simba = Cat.new
# p simba.who_am_i

# Usage when using extend
p Dog.who_am_i
p Cat.who_am_i
