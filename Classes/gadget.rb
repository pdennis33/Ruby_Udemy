# use the class keyword and use CamelCase for class names, and follow it by end

# instance methods are methods that belong exclusively on the object


class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  # instance method
  def info
    "Gadget #{@production_number} has the username #{@username}"
  end
end


phone = Gadget.new
laptop = Gadget.new

p phone.info
p laptop.info

p phone.methods - Object.methods
