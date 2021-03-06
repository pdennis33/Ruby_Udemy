class Gadget

  attr_accessor :username # read and write access
  attr_reader :production_number # read only
  attr_writer :password

  def initialize(username, password)
    @username = username
    self.password = password
    @production_number = generate_production_number
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
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

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

phone = Gadget.new("pdennis", "pass")
puts phone.production_number
# puts phone.password

phone.password = 123
# puts phone.password

phone.password = "123"
# puts phone.password

phone.password = "computers"
# puts phone.password

phone.password = "computers123"
# puts phone.password
