# use the class keyword and use CamelCase for class names, and follow it by end

# instance variables define the object's properties and represent
#   the object's state
# instance variables start with the @ symbol called a sigil.  This denotes
#   the variable's scope, and without this sigil the variable would be
#   interpreted as a local variable to the method it is used in
# We initialize the instance variables with the initialize method.  This
#     method will be called every time the .new method is called


class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "#{@username}  |  #{@password}  |  #{@production_number}"
  end
end

phone = Gadget.new
laptop = Gadget.new

p phone.to_s
p laptop.to_s

p phone.instance_variables
