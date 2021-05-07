class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = {age: 35, occupation: "Candidate",
        hobby: "Running for office", birthplace: "USA"}
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end

end

info = {age: 53, hobby: "Fishing",
      occupation: "Banker", birthplace: "Kentucky"}
senator = Candidate.new("Mr Smith", info)
p senator.name
p senator.hobby
p senator.occupation

puts

info = {hobby: "Horror movies", occupation: "Popcorn vendor"}
other_guy = Candidate.new("Mr Doe", info)
p other_guy.name
p other_guy.hobby
p other_guy.occupation
p other_guy.age
p other_guy.birthplace
