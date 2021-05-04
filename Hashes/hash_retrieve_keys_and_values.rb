fruit_prices = Hash.new("N/A")
fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:grapefruit] = 1.99

p fruit_prices[:banana]
p fruit_prices[:steak]
p fruit_prices[:celery]

fruit_prices.default = "Whoops, that doesn't exist here"
p fruit_prices[:banana]
p fruit_prices[:steak]
p fruit_prices[:celery]
