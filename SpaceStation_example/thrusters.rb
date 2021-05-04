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
