

start_of_year = Time.new(2021, 1, 1)
p start_of_year

# add seconds
p start_of_year + 60
p start_of_year + 180
p start_of_year - 180
#add 1 hour
p start_of_year + (60 * 60)
# add 1 day
p start_of_year + (60 * 60 * 24)
# add 45 days
p start_of_year + (60 * 60 * 24 * 45)
puts
puts

# Challenge: Create a method that takes the number of days into the year
# =>    and returns the date of that number.  IE if we give it 40 days, it
# =>    would return 2/9
def find_day_of_year_by_number(number)
  current_date = Time.new(2015, 12, 31)
  current_date + (60 * 60 * 24 * number)
end

p find_day_of_year_by_number(40)
p find_day_of_year_by_number(150)
p find_day_of_year_by_number(366)
