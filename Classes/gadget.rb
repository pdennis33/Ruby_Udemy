# use the class keyword and use CamelCase for class names, and follow it by end

# Better way to write Getters and Setters, called Accessor methods
#  One way is to use attr_accessor, attr_reader, or attr_writer

class Gadget

  attr_accessor :username # read and write access
  attr_reader :production_number # read only
  attr_writer :password # write only
  # we can also set multiple variables on one line,
  #    such as attr_writer :password, :username

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    val = "Gadget #{@production_number} has the username #{@username}. \n"
    val += "It is made from the #{self.class} class and it has the ID #{self.object_id}"
    val
  end

end

phone = Gadget.new
p phone.production_number

p phone.username
phone.username = "pdennis"
p phone.username
# we can also use the regular syntax
p phone.password = "really really secure"
