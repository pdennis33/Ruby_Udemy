class OlympicMedal

  # Add the Comparable module that is built in to Ruby
  #   This enables access to things like <, <=, >, >=, <=>, .between? etc
  include Comparable

  MEDAL_VALUES = {Gold: 3, Silver: 2, Bronze: 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  # We need to define the <=> operator to tell Ruby how to compare
  #    different instances of this object. We can use the <=> operator
  #    as shown or if we need to, we can us if/elsif statements as shown
  #    commented below
  def <=>(other)
    MEDAL_VALUES[type] <=> MEDAL_VALUES[other.type]
    # if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
    #   -1
    # elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
    #   0
    # else
    #   1
    # end
  end
end

bronze = OlympicMedal.new(:Bronze, 5)
silver = OlympicMedal.new(:Silver, 10)
gold = OlympicMedal.new(:Gold, 3)

puts bronze > silver
puts silver < gold
puts gold >= silver
puts silver != bronze
puts silver.between?(bronze, gold)
puts bronze.between?(silver, gold)
