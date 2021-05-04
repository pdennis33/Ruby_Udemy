def custom_compact(array)
  result = []
  array.each { |char| result << char unless char.nil? }
  result
end

sports = ["Baseball", nil, "Football", nil, nil, "Soccer"]
p sports.compact
p custom_compact(sports)
p sports.compact == custom_compact(sports)
