# use the class keyword and use CamelCase for class names, and follow it by end

# Using parameters with the initialize method

class Gadget

  attr_accessor :username # read and write access
  attr_reader :production_number # read only
  attr_writer :password # write only

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    val = "Gadget #{@production_number} has the username #{@username}. \n"
    val += "It is made from the #{self.class} class and it has the ID #{self.object_id}"
    val
  end

end

g1 = Gadget.new("rubyfan201", "prog123")
g2 = Gadget.new("mrprogrammer", "greatpassword")
g3 = Gadget.new("pdennis", "secure!")

puts g1.to_s
puts g2.to_s
puts g3.to_s

g2.username = "mrsProgrammer"
puts g2.to_s
