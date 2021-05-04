def custom_merge(*hashes)
  result = {}
  hashes.each { |hash| hash.each { |key, value| result[key] = value } }
  result
end

market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}
pantry = {bread: "10 loaves", milk: "25 gallons", pepper: "2 cups"}

# if duplicate keys exist, it will use the value from the LAST arg
p market.merge(kitchen)
p custom_merge(market, kitchen)
puts
p kitchen.merge(market)
p custom_merge(kitchen, market)
puts
p market.merge(kitchen, pantry)
p custom_merge(market, kitchen, pantry)

p market
p kitchen

kitchen.merge!(market)
p kitchen
