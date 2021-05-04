def custom_flatten(source)
  # The lowest level elements will always be returned as a single-dim array
  #    with a single element
  unless source.is_a?(Array)
    return [source]
  end

  result = []
  source.each { |elem| result += custom_flatten(elem) }
  result
end

registrations = [
  "Paul", "Dennis",
  ["Bob", "Dan", "Jack", ["Eddy"]],
  ["Rick", "Susan", "Molly"],
  ["Pierce", "Sean", "George"]
]
p registrations
puts
p registrations.flatten
p custom_flatten(registrations)
