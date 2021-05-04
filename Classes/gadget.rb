# use the class keyword and use CamelCase for class names, and follow it by end

# Setter methods allow you to expose properties to outside of the class
#    for editing them

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

  # Getters and Setters
  def username
    @username
  end

  # Setter (best practice is to close the method name with an =)
  def username=(new_username)
    @username = new_username
  end

  def production_number
    @production_number
  end

  # Setter (best practice is to close the method name with an =)
  def password=(password)
    @password = password
  end

end

phone = Gadget.new
p phone.production_number

p phone.username
phone.username=("pdennis")
p phone.username

phone.password=("very_secure")
# we can also use the regular syntax
p phone.password = "really really secure"
