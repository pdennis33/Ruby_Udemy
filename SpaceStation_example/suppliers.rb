class Suppliers
  def initialize
    @supplies = {}
  end

  def load_supplies(type, quantity)
    puts "----- Supply Action -----"
    puts "Loading #{quantity} units of #{type} in the supply hold."

    if @supplies[type]
      @supplies[type] += quantity
    else
      @supplies[type] = quantity
    end
  end

  def use_supplies(type, quantity)
    puts "----- Supply Action -----"
    if @supplies[type] != nil && @supplies[type] > quantity
      puts "Using #{quantity} of #{type} from the supply hold."
      @supplies[type] -= quantity
    else
      puts "Supply Error: Insufficient #{type} in the supply hold."
    end
  end

  def report_supplies
    puts "----- Supply Report -----"
    if @supplies.keys.length > 0
      @supplies.each do |type, quantity|
        puts "#{type} avalilable: #{quantity} units"
      end
    else
      puts "Supply hold is empty."
    end
  end
end
