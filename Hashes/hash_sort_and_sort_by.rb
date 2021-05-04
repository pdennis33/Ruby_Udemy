pokemon = {
  squirtle: "Water", bulbasaur: "Grass", charizard: "Fire"
}

p pokemon.sort
p pokemon.sort.reverse
puts
p pokemon.sort_by { |pokemon, type| pokemon }
p pokemon.sort_by { |pokemon, type| pokemon }.reverse
puts
p pokemon.sort_by { |pokemon, type| type }
p pokemon.sort_by { |pokemon, type| type }.reverse
