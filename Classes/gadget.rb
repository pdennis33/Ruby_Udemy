# use the class keyword and use CamelCase for class names, and follow it by end
class Gadget
end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

# p phone.class == laptop.class && phone.class == microwave.class
# p phone
# p laptop
# p microwave

puts phone.respond_to?(:length)

#puts phone.methods.sort
