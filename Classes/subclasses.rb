class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name}"
  end
end

class Manager < Employee
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def introduce
    "#{super} and I'm your new manager."
  end

  def yell
    "Who's the boss? I'm the boss!"
  end
end

bob = Manager.new("Bob", 48, "Associate")
puts bob.introduce
puts bob.rank
puts bob.name

rick = Employee.new("Rick", 45)
p rick.name
p rick.age
p rick.introduce
