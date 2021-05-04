class Thrusters
  def activate_thrusters(fuel)
    puts "----- Thruster Action -----"
    if fuel >= 10
      puts "Thrusting action successful."
      fuel -= 10
    else
      puts "Thruster Error: Insufficient fuel available."
    end
  end
end


class SpaceStation
  def initialize
    @thrusters = Thrusters.new
    @sensors = Sensors.new
    @fuel_eng = new Fuel_Engineer
    @supplier = new Suppliers
  end

  def prepare_for_flight
    @fuel_eng.load_fuel(1000)
    @supplier.load_supplies("food", 100)
  end

end

space_station = SpaceStation.new
