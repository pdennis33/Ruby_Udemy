class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end

end

info = {age: 53, hobby: "Fishing",
      occupation: "Banker", birthplace: "Kentucky"}
senator = Candidate.new("Mr Smith", info)
p senator.name
p senator.hobby
p senator.occupation

puts

info = {age: 48, hobby: "Football", birthplace: "Illinois"}
other_guy = Candidate.new("Mr Doe", info)
p other_guy.name
p other_guy.hobby
p other_guy.occupation
