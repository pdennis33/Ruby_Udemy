recipe = {sugar: 5, flour:10, salt: 2, pepper: 4}

p recipe.select { |ingredient, tsp| tsp >= 5 }
p recipe.reject { |ingredient, tsp| tsp >= 5 }
p recipe.select { |ingredient, tsp| ingredient.to_s.include?("s") }
p recipe.reject { |ingredient, tsp| ingredient.to_s.include?("s") }
p recipe.select { |ingredient, tsp| ingredient.to_s.include?("s") && tsp >= 5 }
p recipe.reject { |ingredient, tsp| ingredient.to_s.include?("s") && tsp >= 5 }
