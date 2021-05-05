class Gadget

  attr_accessor :username # read and write access
  attr_reader :production_number # read only
  attr_writer :password # write only

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2021"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = Gadget.new("pdennis", "pass")
puts phone.to_s
