class Gadget

  attr_accessor :username # read and write access
  attr_reader :production_number # read only

  def initialize(username, password)
    @username = username
    self.password = password
    @production_number = generate_production_number
    @apps = []
  end

  # instance method, overriding the to_s method from the Object class
  def to_s
    "Gadget #{production_number} has the username #{username}.
    It is made from the #{self.class} class and it
    has the ID #{object_id}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  private

  attr_writer :apps

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

phone = Gadget.new("pdennis", "password123")
p phone.to_s
phone.reset("paul", "dennis")
