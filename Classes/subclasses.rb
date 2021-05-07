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

p Manager.ancestors
p Worker.ancestors
puts

bob = Manager.new("Bob", 48)
dan = Worker.new("Dan", 36)

p bob.is_a?(Manager)
p dan.is_a?(Employee)
p dan.instance_of?(Worker)
p dan.instance_of?(Employee)
