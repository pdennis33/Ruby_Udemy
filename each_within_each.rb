
def odds_and_evens(numbers)
  odd, even = 0, 1
  results = [[], []]
  numbers.each do |number|
    number.odd? ? results[odd] << number : results[even] << number
  end
  results
end

def print_results(two_d_array)
  two_d_array.each do |result|
    p result
    result.each { |num| p num }
  end
end


nums = [5, 10, 15, 20, 25, 30, 35, 40]
print_results(odds_and_evens(nums))
puts
nums = [3, 6, 9, 12, 15, 18, 21, 24]
print_results(odds_and_evens(nums))
