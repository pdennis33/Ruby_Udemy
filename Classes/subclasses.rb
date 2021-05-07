class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

class Manager < Employee
end

class Worker < Employee
end


bob = Manager.new("Bob", 48)
p bob.introduce
dan = Worker.new("Dan", 36)
p dan.introduce

p bob.name

p bob.class
p dan.class
p bob.class.ancestors
p dan.class.ancestors
