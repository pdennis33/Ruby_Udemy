how_many_options = 0

shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]
shoes = ["puma", "kenneth cole", "echo"]

shirts.each do |shirt|
  ties.each do |tie|
    shoes.each do |shoe|
      p "#{shirt} shirt with a #{tie} tie and #{shoe} shoes"
      how_many_options += 1
    end
  end
end

puts
p "We have #{how_many_options} different options"
