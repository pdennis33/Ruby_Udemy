class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

bob = Player.new
paul = Player.new

def paul.play_game
  "Winner!"
end

p paul.play_game
p bob.play_game

p paul.class.ancestors
p paul.singleton_methods
p bob.singleton_methods
puts
p paul
p paul.singleton_class
p bob
p bob.singleton_class
puts
p paul.object_id
p paul.singleton_class.object_id
p bob.object_id
p bob.singleton_class.object_id
