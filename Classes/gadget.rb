# use the class keyword and use CamelCase for class names, and follow it by end

# Method overriding

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    "Gadget #{@production_number} has the username #{@username}"
  end
end

phone = Gadget.new
p phone.to_s
