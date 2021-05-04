# use the class keyword and use CamelCase for class names, and follow it by end

# Getter methods allow you to expose properties to outside of the class

class Gadget
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

  # Getters
  def username
    @username
  end
  def production_number
    @production_number
  end

end

phone = Gadget.new
p phone.username
p phone.production_number
