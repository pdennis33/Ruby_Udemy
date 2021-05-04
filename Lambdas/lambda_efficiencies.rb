def convert_to_euros(usd)
  usd * 0.95 if usd.is_a?(Numeric)
end

def convert_to_pesos(usd)
  usd * 20.67 if usd.is_a?(Numeric)
end

def convert_to_rupees(usd)
  usd * 68.13 if usd.is_a?(Numeric)
end

p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)

def convert_one(usd, currency, rate)
  yield(usd, currency, rate) if usd.is_a?(Numeric)
end
p convert_one(1000, "euros", 0.95) { |usd, currency, rate| "#{usd} dollars is #{usd * rate} #{currency}" }
p convert_one(1000, "pesos", 20.67) { |usd, currency, rate| "#{usd} dollars is #{usd * rate} #{currency}" }
p convert_one(1000, "rupees", 68.18) { |usd, currency, rate| "#{usd} dollars is #{usd * rate} #{currency}" }

puts
to_euros = lambda { |usd| "#{usd} dollars is #{usd * 0.95} euros" }
to_pesos = lambda { |usd| "#{usd} dollars is #{usd * 20.67} pesos" }
to_rupees = lambda { |usd| "#{usd} dollars is #{usd * 68.18} rupees" }
def convert_best(usd, currency_lambda)
  currency_lambda.call(usd) if usd.is_a?(Numeric)
end
p convert_best(1000, to_euros)
p convert_best(1000, to_pesos)
p convert_best(1000, to_rupees)
p [1000, 2000, 3000].map(&to_euros)
