
birthday = Time.new(2021, 1, 23)
summer = Time.new(2021, 6, 21)
independence_day = Time.new(2021, 7, 4)
winter = Time.new(2021, 12, 21)

puts birthday < summer
puts independence_day > winter
puts birthday <= Time.new(2021, 1, 23)
puts birthday == Time.new(2021, 1, 23)
puts birthday == Time.new(2021, 1, 23, 1)
puts independence_day != winter

puts independence_day.between?(birthday, winter)
puts birthday.between?(summer, winter)
