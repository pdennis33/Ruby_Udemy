# problem approach
def calc_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

p calc_total_1(24.99, 0.18, 0.07)
# now what if we forget the order of the args?
p calc_total_1(0.18, 0.07, 24.99) # no errors but is incorrect

#what if we use a hash?
def calc_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

p calc_total_2({tip: 0.18, price: 24.99, tax: 0.07})
p calc_total_2({price: 24.99, tip: 0.18, tax: 0.07})
# You can actually remove the curly braces if a hash is the LAST argument
p calc_total_2(price: 24.99, tip: 0.18, tax: 0.07)
