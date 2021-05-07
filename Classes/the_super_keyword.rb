class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Vroom! Vroom!"
  end
end

class Firetruck < Car
  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " #{sirens} I'm driving at #{speed} mph"
  end
end

ft = Firetruck.new("Fire Department", "Weeeeeeeooooooo! Weeeeeeeooooooo!")
p ft.drive(55)
p ft.maker
p ft.sirens
