class Car
  BASE_VALUE = 20000
  DEDUCTION_PER_YEAR = 1000
  DEDUCTION_PER_MILE = 10

  def initialize(age, miles)
    age_deduction = age * DEDUCTION_PER_YEAR
    miles_deduction = miles / 10.0
    @value = BASE_VALUE - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "Your car is worse"
  end

  protected

  def value
    @value
  end
end

mustang = Car.new(3, 20000)
charger = Car.new(5, 45000)
p charger.compare_car_with(mustang)
p mustang.compare_car_with(charger)
