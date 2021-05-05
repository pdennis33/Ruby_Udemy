# use module keyword
module LengthConversions
  WEBSITE = "https://google.com"

  # use self. before method to be able to call the method from LengthConversions
  #    It seems similar to static methods in C#
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

# access the module's constant
puts LengthConversions::WEBSITE
# access a module's methods
puts LengthConversions.miles_to_feet(57)
puts LengthConversions.miles_to_inches(0.73)
puts LengthConversions.miles_to_centimeters(2.33)
