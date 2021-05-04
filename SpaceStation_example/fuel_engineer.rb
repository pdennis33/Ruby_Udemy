class Fuel_Engineer
  def initialize
    @fuel = 0
  end

  def load_fuel(quantity)
    puts "----- Fuel Action -----"
    puts "Loading #{quantity} units of fuel in the tank."
    @fuel += quantity
  end

  def report_fuel
    puts "----- Fuel Report -----"
    puts "#{@fuel} units of fuel available."
  end
end
